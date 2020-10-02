class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user_params = get_user_params
    puts "User Params"
    puts user_params
    @new_user = User.new(user_params)
    User.transaction do
      if @new_user.save
        redirect_to root_path
      end
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def get_user_params
    params.require(:user).permit(:name, :password, :password_confirmation).to_h
  end
end
