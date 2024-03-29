require 'spec_helper'
feature 'Accounts' do
  scenario "creating an account" do
    puts subscribem.root_url
    visit subscribem.root_url
    puts page.body
    click_link 'Account Sign Up'
    fill_in 'Name', :with => "Test"
    click_button "Create Account"
    success_message = "Your account has been successfully created"
    page.should have_content(success_message)
  end
end
