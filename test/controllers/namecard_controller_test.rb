require 'test_helper'

class NamecardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get namecard_index_url
    assert_response :success
  end

end
