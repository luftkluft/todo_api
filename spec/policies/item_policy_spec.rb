require 'rails_helper'

RSpec.describe ItemPolicy, type: :policy do
  let!(:user) { create(:user) }
  let!(:todo) { create(:todo, user_id: user.id) }
  let!(:items) { create_list(:item, 10, todo_id: todo.id) }
  let(:todo_id) { todo.id }
  let(:id) { items.first.id }
  let(:headers) { valid_headers }
  let!(:user2) { create(:user, id: 1000) }
  let!(:second_todo) { create(:todo, user_id: 1000) }
  let!(:second_items) { create_list(:item, 10, todo_id: second_todo.id) }
  let(:second_todo_id) { second_todo.id }
  let(:second_id) { second_items.first.id }

  subject { described_class.new(user, todo) }

  describe 'request', type: :request do
    it 'grants access if user is owner' do
      delete "/todos/#{todo_id}/items/#{id}", params: {}, headers: headers
      expect(response).to have_http_status(204)
    end

    it 'denies access if user not owner' do
      expect { delete "/todos/#{second_todo_id}/items/#{second_id}", params: {}, headers: headers }
        .to raise_error(Pundit::NotAuthorizedError)
    end
  end

  subject { described_class }

  permissions :user_auth? do
    it 'denies access if user not owner' do
      expect(subject).not_to permit(user, second_todo)
    end

    it 'grants access if user is owner' do
      expect(subject).to permit(user, todo)
    end
  end
end
