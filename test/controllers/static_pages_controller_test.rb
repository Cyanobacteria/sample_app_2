require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  #方法名子不可以有_?? ex: set_up會錯誤
  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  test "should get root" do
    get root_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end
=begin
  test "should get home" do
    get home_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end
=end
  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | Ruby on Rails Tutorial Sample App"
  end
 
  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end

end
