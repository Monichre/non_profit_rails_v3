require 'rails_helper'

describe "the user log in flow" do
  it "properly displays log in page" do
    visit new_user_session_path
    expect(page).to have_content 'Log in'
    fill_in('user_email', :with => 'liamhellis@gmail.com')
    fill_in('user_password', :with => '8milero')
    click_button('Log in')
    expect(page).to have_content 'Toggle navigation Project ReachOut Volunteer Login Non-profit Login Sign Up Register your non-profit Invalid Email or password. Log in Email Password Remember me Sign up Forgot your password?'
  end
  it 'properly displays the user profile page' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit user_path(user)
    expect(page).to have_content('Liam Ellis')
  end
  it 'creates user bio using Ajax', js: true do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit user_path(user)
    within("div.user-bio") do
      click_link('Edit')
    end
    # within("div.edit") do
      # find('.bio', options = { wait: 3})
    # end

    # .to have_content("Add a brief bio. Add a little about yourself and what you're looking for in a Non-Profit")

  end
end






# Phantomjs.run('try_phantom.coffee')
