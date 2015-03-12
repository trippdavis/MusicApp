class SessionsController < ApplicationController
  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.find_by_email(params[:user][:email])

    if @user.nil?
      flash[:errors] = "No account with that email"
      @user = User.new
      redirect_to new_session_url
    elsif @user.is_password?(params[:user][:password])
      flash[:success] = "Log In Successful"
      log_in_user!(@user)
      redirect_to user_url(@user)
    else
      flash.now[:errors] = "Invalid password"
      render :new
    end
  end

  def destroy
    @user = current_user
    log_out_user!(@user)
    redirect_to new_session_url
  end
end
