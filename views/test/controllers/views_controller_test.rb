require 'test_helper'

class ViewsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get views_index_url
    assert_response :success
  end

  test "should get hello" do
    get views_hello_url
    assert_response :success
  end

  test "should get say_hello_joe" do
    get views_say_hello_joe_url
    assert_response :success
  end

  test "should get count" do
    get views_count_url
    assert_response :success
  end

  test "should get raze" do
    get views_raze_url
    assert_response :success
  end

end
