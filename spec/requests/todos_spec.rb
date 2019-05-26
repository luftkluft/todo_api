RSpec.describe 'Todos API', type: :request do
  include Docs::V1::Todos::Api
  let(:user) { create(:user) }
  let!(:todos) { create_list(:todo, 10, user_id: user.id) }
  let(:todo_id) { todos.first.id }
  let(:headers) { valid_headers }

  describe 'GET /api/v1/todos' do
    include Docs::V1::Todos::Index
    before { get api_v1_todos_path, params: {}, headers: headers }

    it 'returns todos', :dox do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200', :dox do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /api/v1/todos/:id' do
    include Docs::V1::Todos::Show
    before { get api_v1_todo_path(id: todo_id), params: {}, headers: headers }

    context 'when the record exists' do
      it 'returns the todo', :dox do
        expect(json).not_to be_empty
        expect(json['id']).to eq(todo_id)
      end

      it 'returns status code 200', :dox do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:todo_id) { 1000 }

      it 'returns status code 404', :dox do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message', :dox do
        expect(response.body).to match(I18n.t('rspec.could_not_find_todo'))
      end
    end
  end

  describe 'POST /api/v1/todos' do
    include Docs::V1::Todos::Create
    let(:valid_attributes) do
      { title: 'Learn Elm', user_id: user.id.to_s }.to_json
    end

    context 'when request is valid' do
      before { post api_v1_todos_path, params: valid_attributes, headers: headers }

      it 'creates a todo', :dox do
        expect(json['title']).to eq('Learn Elm')
      end

      it 'returns status code 201', :dox do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      let(:invalid_attributes) { { title: nil }.to_json }
      before { post api_v1_todos_path, params: invalid_attributes, headers: headers }

      it 'returns status code 422', :dox do
        expect(response).to have_http_status(422)
      end
    end
  end

  describe 'PUT /api/v1/todos/:id' do
    include Docs::V1::Todos::Update
    let(:valid_attributes) { { title: 'Shopping' }.to_json }

    context 'when the record exists' do
      before { put api_v1_todo_path(id: todo_id), params: valid_attributes, headers: headers }

      it 'returns status code 200', :dox do
        expect(response).to have_http_status(200)
      end
    end
  end

  describe 'DELETE /api/v1/todos/:id' do
    include Docs::V1::Todos::Destroy
    before { delete api_v1_todo_path(id: todo_id), params: {}, headers: headers }

    it 'returns status code 204', :dox do
      expect(response).to have_http_status(204)
    end
  end
end
