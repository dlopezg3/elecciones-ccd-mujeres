require 'test_helper'

class Votation::Sectors::CandidaciesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get votation_sectors_candidacies_index_url
    assert_response :success
  end

  test "should get show" do
    get votations_sectors_candidacies_show_url
    assert_response :success
  end

end
