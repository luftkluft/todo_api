RSpec.describe AuthorizeApiRequest do
  INVALID_TOKEN = /Invalid token/.freeze
  SIGNATURE_HAS_EXPIRED = /Signature has expired/.freeze
  SEGMENTS_ERROR = /Not enough or too many segments/.freeze
  let(:user) { create(:user) }
  let(:header) { { 'Authorization' => valid_token(user.id) } }
  let(:invalid_request_obj) { described_class.new({}) }
  let(:request_obj) { described_class.new(header) }

  describe '#call' do
    context 'when valid request' do
      it 'returns user object' do
        result = request_obj.call
        expect(result).to eq(user)
      end
    end

    context 'when invalid request' do
      context 'when missing token' do
        it 'raises a MissingToken error' do
          expect { invalid_request_obj.call }
            .to raise_error(ExceptionHandler::MissingToken, I18n.t('missing_token'))
        end
      end

      context 'when invalid token' do
        subject(:invalid_request_obj) do
          described_class.new('Authorization' => valid_token(user.id + 1))
        end

        it 'raises an InvalidToken error' do
          expect { invalid_request_obj.call }
            .to raise_error(ExceptionHandler::InvalidToken, INVALID_TOKEN)
        end
      end

      context 'when token is expired' do
        let(:header) { { 'Authorization' => expired_token(user.id) } }
        subject(:request_obj) { described_class.new(header) }

        it 'raises ExceptionHandler::ExpiredSignature error' do
          expect { request_obj.call }
            .to raise_error(
              ExceptionHandler::InvalidToken,
              SIGNATURE_HAS_EXPIRED
            )
        end
      end

      context 'fake token' do
        let(:header) { { 'Authorization' => 'foobar' } }
        subject(:invalid_request_obj) { described_class.new(header) }

        it 'handles JWT::DecodeError' do
          expect { invalid_request_obj.call }
            .to raise_error(
              ExceptionHandler::InvalidToken,
              SEGMENTS_ERROR
            )
        end
      end
    end
  end
end
