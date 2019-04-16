require 'rails_helper'

RSpec.describe 'Comments API' do
  include Docs::V1::Comments::Api
  let(:user) { create(:user) }
  let!(:todo) { create(:todo, user_id: user.id) }
  let(:todo_id) { todo.id }
  let!(:item) { create(:item, :with_comment, todo_id: todo.id ) }
  let(:item_id) { item.id }
  let(:headers) { valid_headers }

  describe 'when GET /todos/:todo_id/items/:item_id/comments' do
    include Docs::V1::Comments::Index
    before { get todo_item_comments_path(todo_id: todo_id, item_id: item_id), params: {}, headers: headers }

    context 'when returns comments of item' do
      it 'when success', :dox do
        expect(response).to have_http_status 200
      end
    end
  end

  describe 'GET  /todos/:todo_id/items/:item_id/comments/:id' do
    include Docs::V1::Comments::Show
    let(:id) { Comment.find_by(item_id: item.id).id }
    before { get todo_item_comment_path(todo_id: todo_id, item_id: item_id, id: id), params: {}, headers: headers }

    context 'when item comment exists' do
      it 'returns status code 200', :dox do
        expect(response).to have_http_status(200)
      end
    end
  end

  describe 'POST /todos/:todo_id/items/:item_id/comments' do
    include Docs::V1::Comments::Create
    let(:valid_attributes) { { body: 'Visit Narnia' }.to_json }

    context 'when request attributes are valid' do
      before do
        post todo_item_comments_path(todo_id: todo_id, item_id: item_id), params: valid_attributes, headers: headers
      end

      it 'returns status code 201', :dox do
        expect(response).to have_http_status(201)
      end
    end

    context 'when an invalid request' do
      before { post todo_item_comments_path(todo_id: todo_id, item_id: item_id), params: {}, headers: headers }

      it 'returns status code 201', :dox do
        expect(response).to have_http_status(201)
      end
    end
  end

  describe 'PUT /todos/:todo_id/items/:item_id/comments/:id' do
    include Docs::V1::Comments::Update
    let(:valid_attributes) { { body: 'Mozart' }.to_json }
    let(:id) { Comment.find_by(item_id: item.id).id }

    before do
      put todo_item_comment_path(todo_id: todo_id, item_id: item_id, id: id), params: valid_attributes, headers: headers
    end

    context 'when comment exists' do
      it 'returns status code 204', :dox do
        expect(response).to have_http_status(204)
      end

      it 'updates the item', :dox do
        updated_comment = Comment.find(id)
        expect(updated_comment.body).to match(/Mozart/)
      end
    end
  end

  describe 'DELETE /todos/:todo_id/items/:item_id/comments/:id' do
    include Docs::V1::Comments::Destroy
    let(:id) { Comment.find_by(item_id: item.id).id }
    before { delete todo_item_comment_path(todo_id: todo_id, item_id: item_id, id: id), params: {}, headers: headers }

    it 'returns status code 204', :dox do
      expect(response).to have_http_status(204)
    end
  end
end