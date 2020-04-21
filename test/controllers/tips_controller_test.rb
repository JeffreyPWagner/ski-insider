require 'test_helper'

class TipsControllerTest < ActionDispatch::IntegrationTest
  include Warden::Test::Helpers
  setup do
    @tip = tips(:one)
    @user = users(:one)
    @user.save
    login_as(@user, :scope => :user)
  end

  test "should get index" do
    get tips_url
    assert_response :success
  end

  test "should get new" do
    get new_tip_url
    assert_response :success
  end

  test "should show tip" do
    get tip_url(@tip)
    assert_response :success
  end

  test "should get edit" do
    get edit_tip_url(@tip)
    assert_response :success
  end

  
end
