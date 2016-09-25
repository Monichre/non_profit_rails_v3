require 'rails_helper'

RSpec.describe User, type: :model do
  it {should validate_presence_of :first_name}
  it {should validate_presence_of :last_name}
  it {should validate_presence_of :password}
  it {should have_and_belong_to_many :non_profits}

  it 'first name default is Liam' do
    user = FactoryGirl.create(:user)
    expect(user.first_name).to eq "Liam"
  end
  it 'has correct email' do
    user = FactoryGirl.create(:user)
    expect(user.email).to eq "somethingelse@whatever.com"
  end
end
