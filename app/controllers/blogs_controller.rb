class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]

  def admin
    @blogs = Blog.all.order('id desc')
    @blogs = Blog.all
    render 'admin_branch', :layout => false
  end
  # GET /blogs
  # GET /blogs.json
  def index
    @blogs = Blog.all.order('id desc')
    @blogs = Blog.all

  end

  # GET /blogs/1
  # GET /blogs/1.json
  def show
    @blogs = Blog.all.order('id desc')

  end

  # GET /blogs/new
  def new
    @blogs = Blog.all.order('id desc')
    @blog = Blog.new
    render :layout => false
  end

  # # GET /blogs/new
  # def single
  #   @blogs = Blog.all.order('id desc')
  #   render 'admin_single', :layout => false
  # end

  # GET /blogs/1/edit
  def edit
    @blogs = Blog.all.order('id desc')
    render :layout => false
  end

  # POST /blogs
  # POST /blogs.json
  def create
    @blogs = Blog.all.order('id desc')
    @blog = Blog.new(blog_params)

    respond_to do |format|
      if @blog.save
        # format.html { redirect_to @blog, notice: 'Blog was successfully created.' }
        format.html { render :admin_branch, notice: 'Blog was successfully created.' }
        format.json { render :index, status: :created, location: :admin_branch }
      else
        format.html { render :new }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
    # respond_to do |format|
    #   if @blog.save
    #     # format.html { redirect_to @blog, notice: 'Blog was successfully created.' }
    #     format.html { render :admin_branch, notice: 'Blog was successfully created.' }
    #     format.json { render :index, status: :created, location: @blog }
    #     # render ''
    #   else
    #     format.html { render :new }
    #     format.json { render json: @blog.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /blogs/1
  # PATCH/PUT /blogs/1.json
  def update
    @blogs = Blog.all.order('id desc')
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { render :admin_branch, notice: 'Blog was successfully updated.' }
        format.json { render :show, status: :ok, location: admin_branch }
      else
        format.html { render :edit }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogs/1
  # DELETE /blogs/1.json
  def destroy
    @blogs = Blog.all.order('id desc')
    @blog.destroy
    respond_to do |format|
      format.html { render :admin_branch, notice: 'Blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_params
      params.require(:blog).permit(:title, :content, :picture)
    end
end
