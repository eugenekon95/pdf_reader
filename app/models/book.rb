class Book < ApplicationRecord
  has_one_attached :attachment
  validates :attachment, presence: true, blob: { content_type: ['application/pdf'], size_range: 1..5.megabytes }
  validates :title, presence: true
  validates :description, presence: true
 

end
