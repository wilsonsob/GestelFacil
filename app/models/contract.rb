class Contract < ApplicationRecord
  has_many :users, through: :commissions
  has_many :commissions
  has_many :terms
  has_many :invoices, through: :terms
  has_many :items, through: :terms
  validates :number, :object, :company, :cnpj_contractor, :cnpj_hired, presence: true
  validates :number, uniqueness: true
end
