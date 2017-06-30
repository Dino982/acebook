require 'rails_helper'

RSpec.feature "Users can see a Navbar", type: :feature do
  scenario "Can see a nav bar" do
    visit "/"
    click_link "Sign up"
    fill_in "Email", with:"test@example.org"
    fill_in "Password", with:"12345"
    click_button "Sign up"
    expect(page).to have_content("Home" && "Sign Out" && "About")
  end
end
