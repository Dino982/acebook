require 'rails_helper'

RSpec.feature "Users can comment on posts", type: :feature do
  scenario "Can add comments to posts and view them" do
    sign_up
    post_message
    fill_in "comment_body", with: "Amazing post!!!"
    click_button "Comment"
    expect(page).to have_content("Amazing post!!!")
  end
end
