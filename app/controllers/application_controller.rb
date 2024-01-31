class ApplicationController < ActionController::Base
  helper_method :current_user
  before_action :login_required

  private
    def current_user
      @current_user ||= AdminUser.find_by(id: session[:admin_user_id]) if session[:admin_user_id]
    end

    def login_required
      redirect_to login_url unless current_user
    end
end
