class SessionsController < ApplicationController
  def new

  end

  def create
  	@user = User.find_by(username: params[:username])
  	if @user && @user.password_digest && @user.try(:authenticate, params[:password])
  		session[:user_id] = @user.id
  		redirect_to home_path
  	else
  		redirect_to login_url, alert: "Invalid username/password combination."
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to login_path, alert: "Come back soon!" 
  end
end
