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

  def show
    @user = current_user
    @wallets = @user.wallets
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def get_partial_user_budget
    @user = current_user
    respond_to do |format|
      format.html { render partial: 'users/partials/user_budget', layout: false and return}
    end
  end

  def get_user_budget_form
    respond_to do |format|
      format.html { render partial: 'users/partials/user_budget_form', layout: false and return }
    end
  end

  def update_user_budget
    @current_user = current_user
    new_budget = params[:budget].to_f
    User.transaction do
      @current_user.update(budget: new_budget)
    end
  end

  private

  def get_user_params
    params.require(:user).permit(:name, :password, :password_confirmation).to_h
  end
end
