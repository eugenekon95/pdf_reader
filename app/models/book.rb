class Book < ApplicationRecord
  belongs_to :user
  has_one_attached :attachment
  validates :attachment, presence: true, blob: { content_type: ['application/pdf'], size_range: 1..15.megabytes }
  validates :title, presence: true
  validates :title, length: { in: 5..30 } 
  validates :description, presence: true
  validates :description, length: { in: 5..200 } 
  validates :image, presence: true
end
