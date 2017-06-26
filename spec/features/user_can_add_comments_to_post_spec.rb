require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Can add comments to posts and view them" do
    visit "/posts"
    click_link "Comment"
    fill_in "Comment", with: "Amazing post!!!"
    click_button "Submit"
    expect(page).to have_content("Amazing post!!!")
  end
end
