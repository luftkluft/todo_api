require 'rails_helper'

RSpec.describe 'Users API', type: :request do
  include Docs::V1::Users::Api
  let(:user) { build(:user) }
  let(:headers) { valid_headers.except('Authorization') }
  let(:valid_attributes) do
    attributes_for(:user, password_confirmation: user.password)
  end

  # User signup test suite
  describe 'POST /signup' do
    include Docs::V1::Users::Create
    context 'when valid request' do
      before { post '/signup', params: valid_attributes.to_json, headers: headers }

      it 'creates a new user', :dox do
        expect(response).to have_http_status(201)
      end

      it 'returns success message', :dox do
        expect(json['message']).to match(/Account created successfully/)
      end

      it 'returns an authentication token', :dox do
        expect(json['auth_token']).not_to be_nil
      end
    end

    context 'when invalid request' do
      before { post '/signup', params: {}, headers: headers }

      it 'does not create a new user', :dox do
        expect(response).to have_http_status(422)
      end

      it 'returns failure message', :dox do
        expect(json['message'])
          .to match(/Validation failed: Password can't be blank, Name can't be blank, Email can't be blank, Password digest can't be blank/)
      end
    end
  end
end
