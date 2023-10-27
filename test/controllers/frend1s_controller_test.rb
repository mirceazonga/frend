require "test_helper"

class Frend1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @frend1 = frend1s(:one)
  end

  test "should get index" do
    get frend1s_url
    assert_response :success
  end

  test "should get new" do
    get new_frend1_url
    assert_response :success
  end

  test "should create frend1" do
    assert_difference("Frend1.count") do
      post frend1s_url, params: { frend1: { email: @frend1.email, first_name: @frend1.first_name, last_name: @frend1.last_name, phone: @frend1.phone, twitter: @frend1.twitter } }
    end

    assert_redirected_to frend1_url(Frend1.last)
  end

  test "should show frend1" do
    get frend1_url(@frend1)
    assert_response :success
  end

  test "should get edit" do
    get edit_frend1_url(@frend1)
    assert_response :success
  end

  test "should update frend1" do
    patch frend1_url(@frend1), params: { frend1: { email: @frend1.email, first_name: @frend1.first_name, last_name: @frend1.last_name, phone: @frend1.phone, twitter: @frend1.twitter } }
    assert_redirected_to frend1_url(@frend1)
  end

  test "should destroy frend1" do
    assert_difference("Frend1.count", -1) do
      delete frend1_url(@frend1)
    end

    assert_redirected_to frend1s_url
  end
end
