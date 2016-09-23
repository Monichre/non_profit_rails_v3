class NonProfitsController < ApplicationController
  before_action :set_non_profit, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:index, :update, :destroy]

  def index
    @non_profits = NonProfit.all
  end

  def show
  end

  def destroy
    @non_profit.destroy
    redirect_to root_path
  end

  #how do I render the Devise views/controller for this
  def edit
  end

  def update
    # binding.pry
    if !(@user.non_profits.include?(@non_profit))
      @user.non_profits.push(@non_profit)
      redirect_to user_path(@user)
    else
      @non_profit.update(non_profit_params)
      redirect_to non_profit_path(@non_profit)
    end
  end

  def destroy
    @user.non_profits.destroy(@non_profit)
    redirect_to user_path(@user)

  end

  private

  def set_non_profit
    @non_profit = NonProfit.find(params[:id])
  end
  def non_profit_params
    params.require(:non_profit).permit(:image, :user)
  end
  def set_user
    if user_signed_in?
      @user = current_user
    end
  end

end
