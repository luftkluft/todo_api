class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password_digest, :created_at, :updated_at
  has_many :todos
end
