class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
      @user = User.new(user_params)
      if @user.save
        flash[:sucess] = "Welcome to the Seminar #{@user.username}"
        redirect_to seminars_path
      else
        render 'new'
      end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = "Your accoutn was updated successfully"
      redirect_to seminars_path

    else
      render 'edit'
    end
 end


  private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end