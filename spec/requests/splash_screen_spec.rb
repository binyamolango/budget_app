require 'rails_helper'

RSpec.describe SplashScreenController, type: :request do
  describe 'GET #index' do
    it 'returns a successful response' do
      get "/"
      expect(response).to be_successful
    end

    it 'skips authentication before action' do
      expect(controller).to receive(:authenticate_user!).exactly(0).times
      get "/"
    end
  end
end