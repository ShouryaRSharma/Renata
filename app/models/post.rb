class Post < ApplicationRecord
  belongs_to :user

  # Active Storage #
  has_one_attached :thumbnail
  has_one_attached :banner

  # Action Text #
  has_rich_text :body
  self.per_page = 5
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, length: {minimum: 5}
  validates :body, length: {minimum: 25}

  def optimized_image(image, x, y)
    return image.variant(resize_to_fill: [x, y]).processed
  end
end
