class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body, :image, :item_id, :created_at, :updated_at
  belongs_to :item
end
