# require 'rails_helper'

# RSpec.describe Admin::DonationsController, type: :controller do
#   let(:admin) do
#     User.create!(
#       email: 'admin@email.com',
#       password: 'password',
#       role: 'admin',
#       name: 'Admin',
#       phone_number: '1234567890'
#     )
#   end

#   before do
#     sign_in admin
#   end

#   describe "GET #index" do
#     before do
#       # Create donations and ensure they are in the correct order
#       @donation1 = Donation.create!(amount: 100.0, user: admin, donation_date: 2.days.ago)
#       @donation2 = Donation.create!(amount: 200.0, user: admin, donation_date: 1.day.ago)
#       @donation3 = Donation.create!(amount: 300.0, user: admin, donation_date: Date.today)
      
#       get :index
#     end

#     it "assigns all donations ordered by donation_date in descending order to @donations" do
#       expect(assigns(:donations)).to eq([@donation3, @donation2, @donation1])
#     end

#     it "renders the index template" do
#       expect(response).to render_template(:index)
#     end
#   end
# end
