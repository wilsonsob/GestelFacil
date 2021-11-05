class Contract < ApplicationRecord
  has_many :users, through: :commissions
  has_many :terms
  # has_many :invoices
  # has_many :itens, through: :terms
end
