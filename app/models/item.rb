class Item < ApplicationRecord
  belongs_to :term
  validates :item_number, :item_title, :service_code, :price, presence: true
end
