require 'test_helper'

class PrivatemessagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get privatemessages_index_url
    assert_response :success
  end

end
