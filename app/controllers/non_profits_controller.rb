class NonProfitsController < ApplicationController
  def index
    @non_profits = NonProfit.all
  end

  def show
  end
end
