RSpec.describe ItemPolicy, type: :policy do
  let!(:user) { create(:user) }
  let!(:todo) { create(:todo, user_id: user.id) }
  let!(:user2) { create(:user, id: 1000) }
  let!(:second_todo) { create(:todo, user_id: 1000) }

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
