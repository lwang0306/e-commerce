class MyDevise::RegistrationsController < Devise::RegistrationsController

  # GET /resource/sign_up
  def new
    @blogs = Blog.all.order('id desc')
    super
  end

  # POST /resource
  def create
    # super
    @blogs = Blog.all.order('id desc')
    render 'welcomes/admin_page'

  end

  # GET /resource/edit
  def edit
    @blogs = Blog.all.order('id desc')
    super
  end

  # PUT /resource
  def update
    @blogs = Blog.all.order('id desc')
    super
  end

  # DELETE /resource
  def destroy
    @blogs = Blog.all.order('id desc')
    super
  end






end