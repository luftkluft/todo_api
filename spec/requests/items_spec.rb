RSpec.describe 'Items API' do
  include Docs::V1::Items::Api
  let(:user) { create(:user) }
  let!(:todo) { create(:todo, user_id: user.id) }
  let!(:items) { create_list(:item, 20, todo_id: todo.id) }
  let(:todo_id) { todo.id }
  let(:id) { items.first.id }
  let(:headers) { valid_headers }

  describe 'GET /api/v1/todos/:todo_id/items' do
    include Docs::V1::Items::Index
    before { get api_v1_todo_items_path(todo_id: todo_id), params: {}, headers: headers }

    context 'when todo exists' do
      it 'returns status code 200', :dox do
        expect(response).to have_http_status(200)
      end

      it 'returns all todo items', :dox do
        expect(json.size).to eq(20)
      end
    end

    context 'when todo does not exist' do
      let(:todo_id) { 0 }

      it 'returns status code 404', :dox do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message', :dox do
        expect(response.body).to match(I18n.t('rspec.could_not_find_todo'))
      end
    end
  end

  describe 'GET /api/v1/todos/:todo_id/items/:id' do
    include Docs::V1::Items::Show
    before { get api_v1_todo_item_path(todo_id: todo_id, id: id), params: {}, headers: headers }

    context 'when todo item exists' do
      it 'returns status code 200', :dox do
        expect(response).to have_http_status(200)
      end

      it 'returns the item', :dox do
        expect(json['id']).to eq(id)
      end
    end

    context 'when todo item does not exist' do
      let(:id) { 0 }

      it 'returns status code 404', :dox do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message', :dox do
        expect(response.body).to match(I18n.t('rspec.could_not_find_item'))
      end
    end
  end

  describe 'POST /api/v1/todos/:todo_id/items' do
    include Docs::V1::Items::Create
    let(:valid_attributes) { { name: 'Visit Narnia', done: false }.to_json }

    context 'when request attributes are valid' do
      before do
        post api_v1_todo_items_path(todo_id: todo_id), params: valid_attributes, headers: headers
      end

      it 'returns status code 201', :dox do
        expect(response).to have_http_status(201)
      end
    end

    context 'when an invalid request' do
      before { post api_v1_todo_items_path(todo_id: todo_id), params: {}, headers: headers }

      it 'returns status code 422', :dox do
        expect(response).to have_http_status(422)
      end
    end
  end

  describe 'PUT /api/v1/todos/:todo_id/items/:id' do
    include Docs::V1::Items::Update
    let(:valid_attributes) { { name: 'Mozart' }.to_json }

    before do
      put api_v1_todo_item_path(todo_id: todo_id, id: id), params: valid_attributes, headers: headers
    end

    context 'when item exists' do
      it 'returns status code 200', :dox do
        expect(response).to have_http_status(200)
      end

      it 'updates the item', :dox do
        updated_item = Item.find(id)
        expect(updated_item.name).to match(/Mozart/)
      end
    end

    context 'when item does not exist' do
      let(:id) { 0 }

      it 'returns status code 404', :dox do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message', :dox do
        expect(response.body).to match(I18n.t('rspec.could_not_find_item'))
      end
    end
  end

  describe 'DELETE /api/v1/todos/:id/items/:id' do
    include Docs::V1::Items::Destroy
    before { delete api_v1_todo_item_path(todo_id: todo_id, id: id), params: {}, headers: headers }

    it 'returns status code 204', :dox do
      expect(response).to have_http_status(204)
    end
  end
end
