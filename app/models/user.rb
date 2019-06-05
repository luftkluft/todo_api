class User < ApplicationRecord
  has_secure_password
  has_many :todos, dependent: :destroy
  validates :name, :email, :password_digest, presence: true
end
