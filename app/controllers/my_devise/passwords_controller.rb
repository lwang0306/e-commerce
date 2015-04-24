class MyDevise::PasswordsController < Devise::PasswordsController
  # GET /resource/password/new
  def new
    @blogs = Blog.all.order('id desc')
    super
  end

  # POST /resource/password
  def create
    @blogs = Blog.all.order('id desc')
    super
  end

  # GET /resource/password/edit?reset_password_token=abcdef
  def edit
    @blogs = Blog.all.order('id desc')
    super
  end

  # PUT /resource/password
  def update
    @blogs = Blog.all.order('id desc')
    super
  end

  protected

  def after_resetting_password_path_for(resource)
    @blogs = Blog.all.order('id desc')
    super(resource)
  end

  # The path used after sending reset password instructions
  def after_sending_reset_password_instructions_path_for(resource_name)
    @blogs = Blog.all.order('id desc')
    super(resource_name)
  end
end
