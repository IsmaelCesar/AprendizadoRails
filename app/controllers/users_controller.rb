class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @new_user = User.new(get_user_params)
    User.transaction do
      if @new_user.save
        redirect_to root_path
      else
        puts "Here Failure!"
        respond_to do |format|
          msg = { message: 'User already exists' }
          format.json { render json: msg, status: 406 }
        end
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
