class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profile
    @user = current_user
    @my_commissions = Commission.where(user_id: @user)
    @invoices_uniq_number = Invoice.all.uniq(&:number)
    @invoices_uniq_cnpj = Invoice.all.uniq{ |invoice| [invoice.number, invoice.cnpj_contractor] }
  end
end
