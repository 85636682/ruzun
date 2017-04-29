require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #omniauth_callbacks" do
    it "returns http success" do
      get :omniauth_callbacks
      expect(response).to have_http_status(:success)
    end
  end

end
