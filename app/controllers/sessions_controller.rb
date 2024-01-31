class SessionsController < ApplicationController
  def new
  end

  def create
    admin_user = AdminUser.find_by(email: session_params[:email])

    if admin_user&.authenticate(session_params[:password])
      session[:admin_user_id] = admin_user.id
      redirect_to root_url, notice: 'ログインしました'
    else
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to root_url, notice: 'ログアウトしました。'
  end

  
  private
    def session_params
      params.require(:session).permit(:email, :password)
    end
end
