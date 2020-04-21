require 'test_helper'

class ResortsControllerTest < ActionDispatch::IntegrationTest
  include Warden::Test::Helpers
  setup do
    @resort = resorts(:one)
    @user = users(:one)
    @user.save
    login_as(@user, :scope => :user)
  end

  test "should get index" do
    get resorts_url
    assert_response :success
  end

  test "should get new" do
    get new_resort_url
    assert_response :success
  end

  test "should get edit" do
    get edit_resort_url(@resort)
    assert_response :success
  end

  test "should update resort" do
    patch resort_url(@resort), params: { resort: { epic: @resort.epic, ikon: @resort.ikon, name: @resort.name, state: @resort.state } }
    assert_redirected_to resort_url(@resort)
  end


end
