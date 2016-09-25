require 'rails_helper'

describe "the user log in flow" do
  it "properly displays home page" do
    visit new_user_session_path
    expect(page).to have_content 'Log in'
  end
end



# Phantomjs.run('try_phantom.coffee')
