require 'rails_helper'

RSpec.describe Category, type: :model do

  it "should be Humanitarian by default" do
    category = FactoryGirl.create(:category)
    expect(category.name).to eq('Humanitarian')
  end

end
