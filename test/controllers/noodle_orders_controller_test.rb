require 'test_helper'

class NoodleOrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get noodle_orders_new_url
    assert_response :success
  end

  test "should get create" do
    get noodle_orders_create_url
    assert_response :success
  end

end
