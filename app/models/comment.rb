class Comment < ApplicationRecord
  VALID_BODY_LENGTH_RANGE = (5..256).freeze
  mount_uploader :image, ImageUploader
  belongs_to :item
  validates :body,
            presence: true,
            length: { in: VALID_BODY_LENGTH_RANGE }
end
