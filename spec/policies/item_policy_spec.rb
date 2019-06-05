RSpec.describe ItemPolicy, type: :policy do
  let!(:user) { create(:user) }
  let!(:todo) { create(:todo, user_id: user.id) }
  let!(:item) { create(:item, todo_id: todo.id) }
  let!(:user2) { create(:user, id: user.id + 1) }
  let!(:second_todo) { create(:todo, user_id: user.id + 1) }
  let!(:item_second) { create(:item, todo_id: second_todo.id) }

  subject { described_class }

  permissions :show?, :update?, :edit?, :destroy? do
    it 'denies access if user not owner' do
      expect(subject).not_to permit(user, item_second)
    end

    it 'grants access if user is owner' do
      expect(subject).to permit(user, item)
    end
  end
end
