require 'rails_helper'

RSpec.describe Admin::DonorsController, type: :controller do
  let(:admin) { create(:user, :admin) }
  let(:donor) { create(:user, role: 'donor') }
  let(:non_admin) { create(:user, role: 'donor') }

  describe "GET #index" do
    context "when the user is not logged in" do
      it "redirects to the login page" do
        get :index
        expect(response).to redirect_to(new_user_session_path)
      end
    end

    context "when the user is not an admin" do
      before { sign_in non_admin }

      it "redirects to the root path with an alert" do
        get :index
        expect(response).to redirect_to(root_path)
        expect(flash[:alert]).to eq('You are not authorized to access this section.')
      end
    end

    context "when the user is an admin" do
      before { sign_in admin }

      it "assigns @donors with all donors ordered by name" do
        donor1 = create(:user, role: 'donor', name: 'John Doe')
        donor2 = create(:user, role: 'donor', name: 'Jane Smith')

        get :index
        expect(assigns(:donors)).to eq([donor1, donor2])
      end

      it "renders the index template" do
        get :index
        expect(response).to render_template(:index)
      end
    end
  end
end
