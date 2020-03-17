class Business < ApplicationRecord
  validates :name, presence: true
  validates :website, presence: true

  belongs_to :city
end
