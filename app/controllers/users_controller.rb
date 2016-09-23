class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :show, :update]
  def index
  end

  def edit
    respond_to do |format|
      format.html { redirect_to user_path(@user)}
      format.js
    end
  end

  def show
  end

  def create
  end

  def update
    # binding.pry
    if (user_params.has_key?('image')) || (user_params.has_key?('bio'))
      current_user.update(user_params)
      redirect_to user_path(current_user)
    end
  end
  def destroy
    # binding.pry
    @non_profit = NonProfit.find(params[:non_profit_id])
    @user.non_profits.destroy(@non_profit)
    redirect_to user_path(@user)
  end
  private

  def user_params
    params.require(:user).permit(:image, :bio)
  end

  def set_user
    @user = current_user
  end

end
