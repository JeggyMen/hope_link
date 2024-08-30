require "test_helper"

class Donors::DashboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get donors_dashboards_index_url
    assert_response :success
  end
end
