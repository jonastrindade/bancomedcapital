require 'test_helper'

class ExtratoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get extrato_index_url
    assert_response :success
  end

end
