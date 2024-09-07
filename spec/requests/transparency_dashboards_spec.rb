require 'rails_helper'

RSpec.describe "TransparencyDashboards", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/transparency_dashboards/index"
      expect(response).to have_http_status(:success)
    end
  end

end
