# app/controllers/donors/dashboards_controller.rb
module Donors
  class DashboardsController < ApplicationController
    before_action :authenticate_user!

    def index
      # This is where you'll later add the logic to fetch and display data
    end
  end
end
