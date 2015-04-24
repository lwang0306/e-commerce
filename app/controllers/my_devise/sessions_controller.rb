class  MyDevise::SessionsController < Devise::SessionsController
# before_filter :configure_sign_in_params, only: [:create]

# GET /resource/sign_in
  def new
    @blogs = Blog.all.order('id desc')
    super
    #
  end

  # POST /resource/sign_in
   def create
    @blogs = Blog.all.order('id desc')
     super
    #
    # self.resource = warden.authenticate!(auth_options)
    # set_flash_message(:notice, :signed_in) if is_flashing_format?
    # sign_in(resource_name, resource)
    # yield resource if block_given?
    # respond_with resource, location: after_sign_in_path_for(resource)

    # render 'welcomes/admin_page', :layout => false
  end

  def after_sign_in_path_for(resource)
    admin_page_welcomes_path
  end

  # # DELETE /resource/sign_out
  def destroy
    @blogs = Blog.all.order('id desc')
    super
  end

# protected

# You can put the params you want to permit in the empty array.
# def configure_sign_in_params
#   devise_parameter_sanitizer.for(:sign_in) << :attribute
# end
end
