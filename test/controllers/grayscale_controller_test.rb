require 'test_helper'

class GrayscaleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get grayscale_index_url
    assert_response :success
  end

end
