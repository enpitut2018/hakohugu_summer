class Task < ApplicationRecord
  belongs_to :category
  validates :category_id, presence: true
  belongs_to :user
  validates :user_id, presence: true
  belongs_to :event
  validates :title, presence: true, { maximum: 50 }
  validates :deadline, presence: true
  validates :status, presence: true
end
