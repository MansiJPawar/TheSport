require 'test_helper'

class JsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get js_index_url
    assert_response :success
  end

end
