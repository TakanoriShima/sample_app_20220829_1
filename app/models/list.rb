class List < ApplicationRecord
  has_one_attached :image
  validates :title, presence: true
  validates :body, presence: true
  validates :image, presence: true, blob: { content_type: :image }
  # validates :image, attached_file_presence: true
end
