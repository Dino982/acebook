require 'rails_helper'

RSpec.feature "Posts can be posted!", type: :feature do
  scenario "Can submit posts and view them" do
    sign_up
    post_message
    expect(page).to have_content("Test post")
  end
end
