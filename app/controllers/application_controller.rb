class ApplicationController < ActionController::Base
  helper_method :current_user

  private
    def current_user
      @current_user ||= AdminUser.find_by(id: session[:admin_user_id]) if session[:admin_user_id]
    end
end
