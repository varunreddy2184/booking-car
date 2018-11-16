require 'test_helper'

class OdysseyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get odyssey_index_url
    assert_response :success
  end

end
