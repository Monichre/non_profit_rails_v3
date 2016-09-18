require 'rails_helper'

RSpec.describe User, type: :model do
  it {should validate_presence_of :first_name}
  it {should validate_presence_of :last_name}
  it {should validate_presence_of :email}
  it {should validate_presence_of :password}
  it {should have_and_belong_to_many :non_profits}

  it 'first name default is Liam' do
    user = FactoryGirl.create(:user, first_name: "Brian")
    expect(user.first_name).to eq "Brian"
  end
end
