class Business < ApplicationRecord
  belongs_to :city

  validates :name, :website, :address, :gift_card_link, presence: true
end
