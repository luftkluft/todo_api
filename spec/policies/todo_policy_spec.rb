RSpec.describe TodoPolicy do
  let(:user) { create(:user) }
  let!(:todos) { create_list(:todo, 10, created_by: user.id) }
  let!(:second_todos) { create_list(:todo, 10, created_by: (user.id + 1)) }
  let(:todo_id) { todos.last.id }
  let(:headers) { valid_headers }

  subject { described_class.new(user, todos.first) }

  describe 'Todos', type: :request do
    it 'denies access if user not owner' do
      expect { delete "/todos/#{todo_id + 1}", params: {}, headers: headers }.to raise_error(Pundit::NotAuthorizedError)
    end

    it 'grants access if user is owner' do
      delete "/todos/#{todo_id}", params: {}, headers: headers
      expect(response).to have_http_status(204)
    end

    it { is_expected.to permit_actions(%i[show update destroy]) }
  end
end
