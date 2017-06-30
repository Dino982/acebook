require 'rails_helper'

RSpec.feature "Users can see a Navbar", type: :feature do
  scenario "Can see a nav bar" do
    sign_up
    expect(page).to have_content("Home" && "Sign Out" && "About")
  end
end
