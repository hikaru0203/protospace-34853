class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?


def index
   @user = User.all
end

def new
   @user = User.new
   if @user.save
    redirect_to @user
   else
       render 'new'
   end


end

def create 
  @user = User.new(user_params)
        if @user.save
         redirect_to @user
        else
            render 'new'
end
end


private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :occupation, :profile, :position])
  end
end