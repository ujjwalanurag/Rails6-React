class UsersController < ApplicationController
  def new
    if current_user
      flash[:notice] = "You have already aigned up"
      redirect_to root_path
    else
      @user = User.new
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Sign up sucessfully"
      redirect_to root_path
    else
      flash.now[:alert] = "Sign up failed"
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
