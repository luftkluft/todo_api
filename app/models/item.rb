class Item < ApplicationRecord
  belongs_to :todo
  has_many :comments, dependent: :destroy
  validates :name, presence: true
  validate :check_deadline
  def check_deadline
    raise(ExceptionHandler::InvalidDeadline, I18n.t('errors.deadline_not_valid')) if deadline &.< Time.zone.now

    true
  end
end
