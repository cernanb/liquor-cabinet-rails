class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @drink = Drink.new
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    session[:user_id] = @user.id

    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def update

    @user = User.find(params[:id])
    binding.pry
    if @user.update(user_params)
      redirect_to @user
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :password, :drink_ids)
    end

end