# require 'rails_helper'

# RSpec.describe Admin::DashboardsController, type: :controller do
#   let(:admin) do
#     User.create!(
#       email: 'admin@email.com',
#       password: 'password',
#       password_confirmation: 'password',
#       role: 'admin',
#       name: 'Admin',
#       phone_number: '1234567890'
#     )
#   end

#   let(:user) do
#     User.create!(
#       email: 'user@example.com',
#       password: 'password',
#       password_confirmation: 'password',
#       role: 'donor',
#       name: 'User',
#       phone_number: '0987654321'
#     )
#   end

#   before do
#     Donation.create!(amount: 100, user: user)
#     Donation.create!(amount: 200, user: user)
#   end

#   describe "GET #index" do
#     context "when user is not logged in" do
#       it "redirects to the new_user_session_path" do
#         get :index
#         expect(response).to redirect_to(new_user_session_path)
#       end
#     end

#     context "when user is logged in as admin" do
#       before do
#         sign_in admin
#       end

#       it "renders the admin dashboard template" do
#         get :index
#         expect(response).to render_template(:index)
#       end

#       it "displays the total donations amount" do
#         get :index
#         total_donations = Donation.sum(:amount)
#         expect(response.body).to include(total_donations)
#       end
#     end
#   end
# end
