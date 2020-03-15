class City < ApplicationRecord
  after_validation :set_slug, only: %i[create update]
  after_validation :set_image_url, only: %i[create update]

  validates :name, uniqueness: true
  has_many :businesses

  private

  def set_slug
    self.slug = name.gsub ' ', ''
  end

  def set_image_url
    photos = search_results = Unsplash::Photo.search(name)
    image_url = photos.first.urls.regular
    self.image_url = image_url
  end
end
