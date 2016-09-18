class UsersController < ApplicationController
  def index

  end

  def show
    @user = current_user
  end

  def update
    @user = User.find(params[:id])
    @non_profit = NonProfit.find(params[:id])
    #binding.pry
    @user.non_profits.push(@non_profit)
    redirect_to user_path(@user)

  end



  private


end
