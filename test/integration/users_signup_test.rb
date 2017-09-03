require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "invalid signup information" do
    get signup_path
    #assert_no_difference 'User.count'
    before_count = User.count
    post users_path, params: {user: {name: "",
                                     email: "user@adsfadsf",
                                     password: "xxx",
                                     password_confirmation: "aaa"}}
    post_count = User.count
    assert_equal before_count, post_count
    assert_template 'users/new'
  end

  test "註冊資料錯誤該顯示錯誤訊息" do
    get signup_path
    post users_path, params: {user: {name: "",
                                     email: "user@adsfadsf",
                                     password: "xxx",
                                     password_confirmation: "aaa"}}
    assert_template 'users/new' 
    #assert_equal @user.errors.count, 4

  end

   test "valid signup information" do
    get signup_path
    assert_difference 'User.count', 1 do
      post users_path, params: { user: { name:  "Example User",
                                         email: "user@example.com",
                                         password:              "password",
                                         password_confirmation: "password" } }
    end
    follow_redirect!
    assert_template 'users/show'
    assert_not flash.errors
   end





end
