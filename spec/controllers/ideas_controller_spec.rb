require 'spec_helper'

describe IdeasController do
  let(:user) { User.make! }

  describe '#new' do
    before do
      sign_in user

      get :new
    end

    it "returns 200" do
      expect(response.response_code).to eq(200)
    end

    it "assigns an idea" do
      expect(assigns(:idea))
    end

  end

  describe '#create' do

    it "redirects to the new idea" do
      post :create, name: 'name', pitch: 'pitch'
      expect(response).to be_redirect
    end

  end

end
