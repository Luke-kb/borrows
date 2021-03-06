class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    
    rescue_from CanCan::AccessDenied do |exception|
        flash[:alert] = exception.message
        redirect_to root_path 
    end

    def after_sign_in_path_for(resource_or_scope)
        profile_path(Profile.find_by user_id: current_user.id) 
    end

end
