class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :show, :update]
  def index
  end

  def edit
  end

  def show
  end

  def create
  end

  def update
    @non_profit = NonProfit.find(params[:id])
    if user_params.has_key?('image')
      current_user.update(user_params)
      redirect_to user_path(current_user)
    else
      @user.non_profits.push(@non_profit)
      redirect_to user_path(current_user)
      binding.pry
    end
  end



  private

  def user_params
    params.require(:user).permit(:image)
  end

  def set_user
    @user = current_user
  end

end
