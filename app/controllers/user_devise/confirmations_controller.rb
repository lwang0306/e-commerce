class UserDevise::ConfirmationsController < Devise::ConfirmationsController
  # GET /resource/confirmation/new
  def new
    @blogs = Blog.all.order('id desc')
    super
  end

  # POST /resource/confirmation
  def create
    @blogs = Blog.all.order('id desc')
    super
  end

  # GET /resource/confirmation?confirmation_token=abcdef
  def show
    @blogs = Blog.all.order('id desc')
    super
  end

  # protected

  # The path used after resending confirmation instructions.
  def after_resending_confirmation_instructions_path_for(resource_name)
    @blogs = Blog.all.order('id desc')
    super(resource_name)
  end

  # The path used after confirmation.
  def after_confirmation_path_for(resource_name, resource)
    @blogs = Blog.all.order('id desc')
    super(resource_name, resource)
  end
end