require 'rails_helper'

describe ImageUploader do
  let(:user) { create(:user) }
  let!(:todo) { create(:todo, user_id: user.id) }
  let!(:item) { create(:item, todo_id: todo.id) }
  let(:file_name) { 'image.jpg' }
  let(:path_to_file) { "#{fixture_path}/images/#{file_name}" }

  subject(:image_uploader) { described_class.new(item, :image) }

  before do
    described_class.enable_processing = true
    File.open(path_to_file) { |file| image_uploader.store!(file) }
  end

  after do
    described_class.enable_processing = false
    image_uploader.remove!
  end

  it 'when resize to #thumb' do
    expect(image_uploader.size).to be > image_uploader.thumb.size
  end
end
