class Invoice < ApplicationRecord
  belongs_to :term
  has_many :details
  has_one_attached :file
end
