require 'test_helper'

class ChatControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get root_path
    assert_template '/chat/index'
    assert_response :success
  end

end
