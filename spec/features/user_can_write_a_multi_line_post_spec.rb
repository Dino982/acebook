require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Can submit posts accross multi lines" do
    visit "/posts"
    click_link "Sign up"
    fill_in "Email", with:"test@example.org"
    fill_in "Password", with:"12345"
    click_button "Sign up"
    click_link "New post"
    fill_in "Message", with: "Hello, world!\nThis is my new line"
    click_button "Submit"
    expect(page).to have_content("Hello, world! This is my new line")
  end
end
