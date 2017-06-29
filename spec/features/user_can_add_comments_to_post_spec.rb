require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Can add comments to posts and view them" do
    visit "/posts"
    click_link "Sign up"
    fill_in "Email", with:"test@example.org"
    fill_in "Password", with:"12345"
    click_button "Sign up"
    click_link "New post"
    fill_in "Message", with: "Test post"
    click_button "Submit"
    fill_in "Body", with: "Amazing post!!!"
    click_button "Create Comment"
    expect(page).to have_content("Amazing post!!!")
  end
end
