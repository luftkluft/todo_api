require 'rails_helper'

RSpec.describe 'Todos API', type: :request do
  COULDN_NOT_FIND_TODO = /Couldn't find Todo/.freeze
  TITLE_CANT_BE_BLANK =  /Validation failed: Title can't be blank/.freeze
  include Docs::V1::Todos::Api
  let(:user) { create(:user) }
  let!(:todos) { create_list(:todo, 10, created_by: user.id) }
  let(:todo_id) { todos.first.id }
  let(:headers) { valid_headers }

  describe 'GET /todos' do
    include Docs::V1::Todos::Index
    before { get '/todos', params: {}, headers: headers }

    it 'returns todos', :dox do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200', :dox do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /todos/:id' do
    include Docs::V1::Todos::Show
    before { get "/todos/#{todo_id}", params: {}, headers: headers }

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
        expect(response.body).to match(COULDN_NOT_FIND_TODO)
      end
    end
  end

  describe 'POST /todos' do
    include Docs::V1::Todos::Create
    let(:valid_attributes) do
      { title: 'Learn Elm', created_by: user.id.to_s }.to_json
    end

    context 'when request is valid' do
      before { post '/todos', params: valid_attributes, headers: headers }

      it 'creates a todo', :dox do
        expect(json['title']).to eq('Learn Elm')
      end

      it 'returns status code 201', :dox do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      let(:invalid_attributes) { { title: nil }.to_json }
      before { post '/todos', params: invalid_attributes, headers: headers }

      it 'returns status code 422', :dox do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message', :dox do
        expect(json['message'])
          .to match(TITLE_CANT_BE_BLANK)
      end
    end
  end

  describe 'PUT /todos/:id' do
    include Docs::V1::Todos::Update
    let(:valid_attributes) { { title: 'Shopping' }.to_json }

    context 'when the record exists' do
      before { put "/todos/#{todo_id}", params: valid_attributes, headers: headers }

      it 'updates the record', :dox do
        expect(response.body).to be_empty
      end

      it 'returns status code 204', :dox do
        expect(response).to have_http_status(204)
      end
    end
  end

  describe 'DELETE /todos/:id' do
    include Docs::V1::Todos::Destroy
    before { delete "/todos/#{todo_id}", params: {}, headers: headers }

    it 'returns status code 204', :dox do
      expect(response).to have_http_status(204)
    end
  end
end
