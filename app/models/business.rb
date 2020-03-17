class Business < ApplicationRecord
  validates :name, presence: true
  validates :website, presence: true

  belongs_to :city

  validates :name, :website, :address, :gift_card_link, presence: true
end
