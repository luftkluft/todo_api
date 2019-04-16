class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :done, :todo_id, :deadline, :created_at, :updated_at
  belongs_to :todo
end
