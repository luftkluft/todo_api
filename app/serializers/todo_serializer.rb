class TodoSerializer < ActiveModel::Serializer
  attributes :id, :title, :user_id, :created_at, :updated_at
  has_many :items
end
