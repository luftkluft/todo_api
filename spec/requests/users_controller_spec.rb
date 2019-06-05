RSpec.describe 'Users API', type: :request do
  include Docs::V1::Users::Api
  let(:user) { build(:user) }
  let(:headers) { valid_headers.except('Authorization') }
  let(:valid_attributes) do
    attributes_for(:user, password_confirmation: user.password)
  end

  describe 'POST /api/v1/signup' do
    include Docs::V1::Users::Create
    context 'when valid request' do
      before { post api_v1_signup_path, params: valid_attributes.to_json, headers: headers }

      it 'creates a new user', :dox do
        expect(response).to have_http_status(201)
      end

      it 'returns success message', :dox do
        expect(json['message']).to match(I18n.t('account_created'))
      end

      it 'returns an authentication token', :dox do
        expect(json['auth_token']).not_to be_nil
      end
    end

    context 'when invalid request' do
      before { post api_v1_signup_path, params: {}, headers: headers }

      it 'does not create a new user', :dox do
        expect(response).to have_http_status(422)
      end
    end
  end
end
