RSpec.describe AuthenticateUser do
  let(:user) { create(:user) }
  let(:valid_auth_obj) { described_class.new(user.email, user.password) }
  let(:invalid_auth_obj) { described_class.new('foo', 'bar') }

  describe '#call' do
    context 'when valid credentials' do
      it 'returns an auth token' do
        token = valid_auth_obj.call
        expect(token).not_to be_nil
      end
    end

    context 'when invalid credentials' do
      it 'raises an authentication error' do
        expect { invalid_auth_obj.call }
          .to raise_error(
            ExceptionHandler::AuthenticationError,
            I18n.t('invalid_credentials')
          )
      end
    end
  end
end
