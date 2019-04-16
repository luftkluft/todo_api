class Item < ApplicationRecord
  belongs_to :todo
  has_many :comments, dependent: :destroy
  validates :name, presence: true
end
