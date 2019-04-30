RSpec.describe CommentPolicy, type: :policy do
  let!(:user) { create(:user) }
  let!(:todo) { create(:todo, user_id: user.id) }
  let!(:item) { create(:item, todo_id: todo.id) }
  let!(:comment) { create(:comment, item_id: item.id) }
  let!(:user2) { create(:user, id: 1000) }
  let!(:second_todo) { create(:todo, user_id: 1000) }
  let!(:second_item) { create(:item, todo_id: second_todo.id) }
  let!(:second_comment) { create(:comment, item_id: second_item.id) }

  subject { described_class }

  permissions :show?, :update?, :edit?, :destroy? do
    it 'denies access if user not owner' do
      expect(subject).not_to permit(user, second_comment)
    end

    it 'grants access if user is owner' do
      expect(subject).to permit(user, comment)
    end
  end
end
