RSpec.describe 'Authentication', type: :request do
  include Docs::V1::Users::Api
  describe 'POST /api/v1/auth/login' do
    include Docs::V1::Users::Authenticate
    let!(:user) { create(:user) }
    let(:headers) { valid_headers.except('Authorization') }
    let(:valid_credentials) do
      {
        email: user.email,
        password: user.password
      }.to_json
    end
    let(:invalid_credentials) do
      {
        email: Faker::Internet.email,
        password: Faker::Internet.password
      }.to_json
    end

    context 'When request is valid' do
      before { post api_v1_auth_login_path, params: valid_credentials, headers: headers }
      it 'returns an authentication token', :dox do
        expect(json['auth_token']).not_to be_nil
      end
    end

    context 'When request is invalid' do
      before { post api_v1_auth_login_path, params: invalid_credentials, headers: headers }

      it 'returns a failure message', :dox do
        expect(json['message']).to match(I18n.t('invalid_credentials'))
      end
    end
  end
end
