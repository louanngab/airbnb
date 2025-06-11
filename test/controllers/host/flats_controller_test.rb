require "test_helper"

class Host::FlatsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get host_flats_new_url
    assert_response :success
  end

  test "should get create" do
    get host_flats_create_url
    assert_response :success
  end
end
