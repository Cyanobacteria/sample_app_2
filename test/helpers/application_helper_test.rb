require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "title helper" do
    assert_equal title,         "Ruby on Rails Tutorial Sample App"
    assert_equal title("Help"), "Help | Ruby on Rails Tutorial Sample App"
  end
end
