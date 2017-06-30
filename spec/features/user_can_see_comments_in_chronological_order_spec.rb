require 'rails_helper'

RSpec.feature "Users can see posts in chronological order", type: :feature do
  scenario "Can submit see posts newest first" do
    visit "/posts"
    click_link "Sign up"
    fill_in "Email", with:"test@example.org"
    fill_in "Password", with:"12345"
    click_button "Sign up"
    click_link "New post"
    fill_in "Message", with: "This is my first post"
    click_button "Submit"
    click_link "New post"
    fill_in "Message", with: "This is my second post"
    click_button "Submit"
    first_idx = page.body.index("This is my first post")
    second_idx = page.body.index("This is my second post")
    expect(first_idx).to be > second_idx
  end
end
