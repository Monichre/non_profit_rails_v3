class NonProfit::RegistrationsController < Devise::RegistrationsController
  def new
    @non_profit = NonProfit.new
    render :new
  end
  private
  def sign_up_params
    params.require(:non_profit).permit(:name, :location, :mission, :email, :password, :password_confirmation)
  end
end
