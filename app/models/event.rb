class Event < ApplicationRecord
  belongs_to :category
  validates :category_id, presence: true
  validates :title, presence: true, { maximum: 50 }
  validates :member_n,  { maximum: 20 }
end
