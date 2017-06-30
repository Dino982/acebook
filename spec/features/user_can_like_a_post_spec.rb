require 'rails_helper'

RSpec.feature "Users can like posts", type: :feature do
  scenario "User can like a post once" do
    sign_up
    post_message
    click_button "Like"
    expect(page).to have_content("Likes: 1")
  end

  scenario "User can view the number of likes on a post" do
    sign_up
    post_message
    click_button "Like"
    click_link "Sign out"
    visit "/"
    click_link "Sign up"
    fill_in "Email", with:"cat@example.org"
    fill_in "Password", with:"123"
    click_button "Sign up"
    click_button "Like"
    expect(page).to have_content("Likes: 2")
  end
end
