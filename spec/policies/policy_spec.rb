RSpec.describe TodoPolicy do
  let!(:user) { create(:user) }
  let!(:todos) { create_list(:todo, 10, user_id: user.id) }
  let!(:user2) { create(:user, id: 1000) }
  let(:todo_id) { todos.last.id }
  subject { described_class }
  permissions :user_auth? do
    it 'denies access if user not owner' do
      expect(subject).not_to permit(user2, Todo.find_by(id: todo_id))
    end

    it 'grants access if user is owner' do
      expect(subject).to permit(user, Todo.find_by(id: todo_id))
    end
  end
end
