require 'rails_helper'

RSpec.feature "Posts are formatted", type: :feature do
  scenario "Can submit posts accross multi lines" do
    sign_up
    post_message_with_new_line
    expect(page).to have_content("Hello, world! This is my new line")
  end
end
