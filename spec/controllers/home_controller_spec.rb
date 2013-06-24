require 'spec_helper'

describe HomeController do

  describe '#index' do

    before do
      get :index
    end

    it "returns 200" do
      expect(response.response_code).to eq(200)
    end

  end

end
