require 'rails_helper'

RSpec.describe TodoPolicy, type: :policy do
  let!(:user) { create(:user) }
  let!(:todos) { create_list(:todo, 10, user_id: user.id) }
  let!(:user2) { create(:user, id: 1000) }
  let!(:second_todos) { create_list(:todo, 10, user_id: 1000) }
  let(:todo_id) { todos.last.id }
  let(:headers) { valid_headers }

  subject { described_class.new(user, todos.last) }

  describe 'request', type: :request do
    it 'denies access if user not owner' do
      expect { delete "/todos/#{todo_id + 1}", params: {}, headers: headers }.to raise_error(Pundit::NotAuthorizedError)
    end

    it 'grants access if user is owner' do
      delete "/todos/#{todo_id}", params: {}, headers: headers
      expect(response).to have_http_status(204)
    end
  end

  subject { described_class }

  permissions :user_auth? do
    it 'denies access if user not owner' do
      expect(subject).not_to permit(user, second_todos.last)
    end

    it 'grants access if user is owner' do
      expect(subject).to permit(user, todos.last)
    end
  end
end
