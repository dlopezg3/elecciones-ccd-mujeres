require 'test_helper'

class Votation::SectorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get votation_sectors_index_url
    assert_response :success
  end

end
