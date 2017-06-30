def sign_up
  visit "/posts"
  click_link "Sign up"
  fill_in "Email", with:"test@example.org"
  fill_in "Password", with:"12345"
  click_button "Sign up"
end

def post_message
  first(:link, "New post").click
  fill_in "Message", with: "Test post"
  click_button "Submit"
end

def post_second_message
  first(:link, "New post").click
  fill_in "Message", with: "This is my second post"
  click_button "Submit"
end

def post_message_with_new_line
  first(:link, "New post").click
  fill_in "Message", with: "Hello, world!\nThis is my new line"
  click_button "Submit"
end
