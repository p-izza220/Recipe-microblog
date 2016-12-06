class UsersController < ApplicationController
  def index
  	@users = User.all
        if params[:search]
      @users = User.search(params[:search]).order("created_at DESC")
    else
      @users = User.all.order("created_at DESC")
    end
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		session[:user_id] = @user.id 
  		redirect_to home_path
    else
      redirect_to users_path alert: "Username or email already in use."
  	end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  	@user = User.find(session[:user_id])
  end

  def update
  	@user = User.find(session[:user_id])
  	User.find(session[:user_id]).update(user_params)
  	if @user.save
  		redirect_to users_show_path, alert: "Your account has been updated."
  	else
  		redirect_to users_edit_path, alert: "Uh oh... something went wrong. Please try again later."
  	end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_url, alert: "You have successfully logged out."
  end

  private

  def user_params
  	params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end


end













