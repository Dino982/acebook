require 'rails_helper'

RSpec.feature "Users can see posts in chronological order", type: :feature do
  scenario "Can submit see posts newest first" do
    sign_up
    post_message
    post_second_message
    first_idx = page.body.index("Test post")
    second_idx = page.body.index("This is my second post")
    expect(first_idx).to be > second_idx
  end
end
