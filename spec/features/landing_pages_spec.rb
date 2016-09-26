require 'rails_helper'

describe "the user log in flow" do
  DatabaseCleaner.clean
  it "properly displays log in page" do
    visit new_user_session_path
    expect(page).to have_content 'Log in'
    fill_in('user_email', :with => 'liamhellis@gmail.com')
    fill_in('user_password', :with => '8milero')
    click_button('Log in')
    expect(page).to have_content 'Toggle navigation Project ReachOut Volunteer Login Non-profit Login Sign Up Register your non-profit Invalid Email or password. Log in Email Password Remember me Sign up Forgot your password?'
    click_link('.dropdown-toggle')
    click_link('Profile')
    expect(page).to have_content 'Liam Ellis'
  end
end



# Phantomjs.run('try_phantom.coffee')
