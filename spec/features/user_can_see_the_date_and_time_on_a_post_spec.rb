require 'rails_helper'

RSpec.feature "Posts have a date and time", type: :feature do
  scenario "Users can see the date and time a post was submitted" do
    sign_up
    post_message
    expect(page).to have_content(Time.new.strftime("%B %-d at %l:%M%p"))
  end
end
