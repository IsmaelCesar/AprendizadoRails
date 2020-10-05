class SessionsController < ApplicationController

  before_action :authentication_params, only: [:create]

  def new
  end

  def create
    @user = User.find_by(name: params[:name])
    if @user && @user.authenticate(params[:password])
      puts 'Success'
      sign_in(@user)
      redirect_to users_path
    else
      puts 'Failure'
      flash.now[:alert] = 'Invalid username or password'
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end

  private

  def authentication_params
    params.permit(:name, :password)
  end

end