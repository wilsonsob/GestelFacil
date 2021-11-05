class Term < ApplicationRecord
  belongs_to :contract
  has_many :items
  has_many :invoices
  has_many :results, through: :invoices
  validates :number, :date_start, :date_end, presence: true
end
