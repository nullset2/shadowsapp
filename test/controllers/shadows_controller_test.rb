require 'test_helper'

class ShadowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shadow = shadows(:one)
  end

  test "should get index" do
    get shadows_url
    assert_response :success
  end

  test "should get new" do
    get new_shadow_url
    assert_response :success
  end

  test "should create shadow" do
    assert_difference('Shadow.count') do
      post shadows_url, params: { shadow: {  } }
    end

    assert_redirected_to shadow_url(Shadow.last)
  end

  test "should show shadow" do
    get shadow_url(@shadow)
    assert_response :success
  end

  test "should get edit" do
    get edit_shadow_url(@shadow)
    assert_response :success
  end

  test "should update shadow" do
    patch shadow_url(@shadow), params: { shadow: {  } }
    assert_redirected_to shadow_url(@shadow)
  end

  test "should destroy shadow" do
    assert_difference('Shadow.count', -1) do
      delete shadow_url(@shadow)
    end

    assert_redirected_to shadows_url
  end
end
