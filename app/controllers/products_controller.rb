class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def admin
    @products = Product.all
    render 'admin_branch', :layout => false
  end
  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
    all_products = Product.all
    @recent_products = []
    if (all_products.size() <= 3) then
      @recent_products = all_products
    else
      size = all_products.size()
      @recent_products << Product.find(size - 1)
      @recent_products << Product.find(size - 2)
      @recent_products << Product.find(size - 3)
    end

  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    category_ids = params[:category][:category_id][1..-1]
    category_ids.each do |i|
      c = Category.find(i)
      @product.categories << c
    end

    respond_to do |format|

      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    category_ids = params[:category][:category_id][1..-1]
    category_ids.each do |i|
      c = Category.find(i)
      @product.categories << c
    end

    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def see_by_category
    num = params[:cate_num]
    c = Category.find(num)
    @products = Category.find(num).products
    render :index
  end

  def view_shopping_cart
    current_user = User.find(session['warden.user.user.key'][0][0])
    @products = current_user.products
    render :shopping_cart
  end

  def add_to_shopping_cart
    current_user = User.find(session['warden.user.user.key'][0][0])
    current_user.products << Product.find(params[:new_item_id])
    @products = current_user.products
    # render :shopping_cart
    redirect_to '/products/my/shopping_cart'
  end

  def decrease_quantity
    current_user = User.find(session['warden.user.user.key'][0][0])
    product_to_delete = Product.find(params[:decrease_item_id])
    original_quantity = 0
    current_user.products.each do |p|
      if (p.id.to_s == params[:decrease_item_id]) then
        original_quantity += 1
      end
    end
    current_user.products.delete(product_to_delete)
    original_quantity -= 1
    1.upto(original_quantity) do
      current_user.products << product_to_delete
    end
    @products = current_user.products
    redirect_to "/products/my/shopping_cart"
  end

  def increase_quantity
    current_user = User.find(session['warden.user.user.key'][0][0])
    product_to_add = Product.find(params[:increase_item_id])
    current_user.products << product_to_add
    @products = current_user.products
    redirect_to "/products/my/shopping_cart"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :price, :description, :image)
      # params.require(:category).permit(:id, :name)
    end
end
