require 'test_helper'

class PastumControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pastum_index_url
    assert_response :success
  end

end
