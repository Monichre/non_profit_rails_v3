class UsersController < ApplicationController
  def index

  end

  def show
    @user = current_user
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

end
