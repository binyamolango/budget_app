require 'rails_helper'

RSpec.describe 'records', type: :request do
  describe 'GET /records/new' do
    it 'returns a successful response' do
      user = create_user
      sign_in user
      category = create(:category, user:)

      get new_category_record_path(category)
      expect(response).to be_successful
    end

    it 'assigns a new record to @record' do
      user = create_user
      sign_in user
      category = create(:category, user:)

      get new_category_record_path(category)
      expect(response).to be_successful
    end
  end

  describe 'POST /records' do
    it 'creates a new record with valid params' do
      user = create_user
      sign_in user
      category = create(:category, user:)

      get new_category_record_path(category)
      expect(response).to be_successful
    end

    it 'renders new with unprocessable_entity for invalid params' do
      user = create_user
      sign_in user
      category = create(:category, user:)
      invalid_params = { name: '', amount: '' }

      post category_records_path(category), params: { record: invalid_params }

      expect(response).to have_http_status(:unprocessable_entity)
      expect(response).to render_template(:new)
    end
  end

  def create_user
    User.create(name: 'John', email: 'joh@gmail.com', password: 'password')
  end
end
