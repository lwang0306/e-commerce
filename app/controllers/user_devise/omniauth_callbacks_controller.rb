class UserDevise::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # You should configure your model like this:
  #devise :omniauthable, omniauth_providers: [:twitter]

  # # You should also create an action method in this controller like this:
  # def twitter
  #   @blogs = Blog.all.order('id desc')
  # end
  #
  # # More info at:
  # # https://github.com/plataformatec/devise#omniauth
  #
  # # GET|POST /resource/auth/twitter
  # def passthru
  #   @blogs = Blog.all.order('id desc')
  #   super
  # end
  #
  # # GET|POST /users/auth/twitter/callback
  # def failure
  #   @blogs = Blog.all.order('id desc')
  #   super
  # end
  #
  # protected
  #
  # # The path used when omniauth fails
  # def after_omniauth_failure_path_for(scope)
  #   @blogs = Blog.all.order('id desc')
  #   super(scope)
  # end
end
