class Invoice < ApplicationRecord
  belongs_to :term
  has_many :results
end
