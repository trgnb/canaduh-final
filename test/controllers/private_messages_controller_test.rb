require 'test_helper'

class PrivateMessagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get private_messages_index_url
    assert_response :success
  end

end
