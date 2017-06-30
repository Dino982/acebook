require 'rails_helper'

RSpec.feature "Posts have a date and time", type: :feature do
  scenario "Users can see the date and time a post was submitted" do
    visit "/posts"
    click_link "Sign up"
    fill_in "Email", with:"test@example.org"
    fill_in "Password", with:"12345"
    click_button "Sign up"
    click_link "New post"
    fill_in "Message", with: "This is my first post"
    click_button "Submit"
    expect(page).to have_content(Time.new.strftime("%B %-d at %l:%M%p"))
  end
end
