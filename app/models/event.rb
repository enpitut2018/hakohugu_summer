class Event < ApplicationRecord
  belongs_to :category
  validates :category_id, presence: true
  validates :title, presence: true, length:{ maximum: 50 }
  validates :member_n, length:{ maximum: 20 }
end
