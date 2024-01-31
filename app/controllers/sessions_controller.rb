class SessionsController < ApplicationController
  skip_before_action :login_required

  def new
  end

  def create
    admin_user = AdminUser.find_by(email: session_params[:email])

    if admin_user&.authenticate(session_params[:password])
      session[:admin_user_id] = admin_user.id
    redirect_to users_path, notice: 'ログインしました'
  else
    redirect_to login_path, alert: 'ログインに失敗しました'

    end
  end

  def destroy
  session.delete(:admin_user_id)
  redirect_to login_path, notice: 'ログアウトしました。'
  end


  private
    def session_params
      params.require(:session).permit(:email, :password)
    end
end
