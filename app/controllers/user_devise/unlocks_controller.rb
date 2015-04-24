class MyDevise::UnlocksController < Devise::UnlocksController
  # GET /resource/unlock/new
  def new
    @blogs = Blog.all.order('id desc')
    super
  end

  # POST /resource/unlock
  def create
    @blogs = Blog.all.order('id desc')
    super
  end

  # GET /resource/unlock?unlock_token=abcdef
  def show
    @blogs = Blog.all.order('id desc')
    super
  end

  # protected

  # The path used after sending unlock password instructions
  def after_sending_unlock_instructions_path_for(resource)
    @blogs = Blog.all.order('id desc')
    super(resource)
  end

  # The path used after unlocking the resource
  def after_unlock_path_for(resource)
    @blogs = Blog.all.order('id desc')
    super(resource)
  end
end
