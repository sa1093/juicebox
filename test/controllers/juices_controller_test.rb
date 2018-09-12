require 'test_helper'

class JuicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @juice = juices(:one)
  end

  test "should get index" do
    get juices_url
    assert_response :success
  end

  test "should get new" do
    get new_juice_url
    assert_response :success
  end

  test "should create juice" do
    assert_difference('Juice.count') do
      post juices_url, params: { juice: { capacity: @juice.capacity, name: @juice.name, price: @juice.price } }
    end

    assert_redirected_to juice_url(Juice.last)
  end

  test "should show juice" do
    get juice_url(@juice)
    assert_response :success
  end

  test "should get edit" do
    get edit_juice_url(@juice)
    assert_response :success
  end

  test "should update juice" do
    patch juice_url(@juice), params: { juice: { capacity: @juice.capacity, name: @juice.name, price: @juice.price } }
    assert_redirected_to juice_url(@juice)
  end

  test "should destroy juice" do
    assert_difference('Juice.count', -1) do
      delete juice_url(@juice)
    end

    assert_redirected_to juices_url
  end
end
