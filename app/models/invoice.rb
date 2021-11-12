class Invoice < ApplicationRecord
  belongs_to :term
  has_many :results
  has_one_attached :file
end
