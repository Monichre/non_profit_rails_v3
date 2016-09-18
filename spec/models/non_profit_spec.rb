require 'rails_helper'

RSpec.describe NonProfit, type: :model do
  it {should validate_presence_of :name}
  it {should validate_presence_of :email}
  it {should validate_presence_of :password}
  it {should have_and_belong_to_many :users}
  it {should have_and_belong_to_many :categories}

  it 'has a default name of Sharing' do
    non_profit = FactoryGirl.create(:non_profit)
    expect(non_profit.name).to eq('Sharing and Caring Hands')
  end
end
