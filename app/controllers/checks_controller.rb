class ChecksController < ApplicationController

  def analysis
    # Lista de faturas de numero exclusivo:
    @invoices_uniq_number = Invoice.all.uniq(&:number)
    # @invoices_uniq_number.count = qtd de faturas
    # @invoices_uniq_number.class => array

    # Lista de faturas de cnpj (do contratante) exclusivo
    @invoices_uniq_cnpj = Invoice.all.uniq{ |invoice| [invoice.number, invoice.cnpj_contractor] }

    # Para analises relativas ao current_user
    @user = current_user
    @my_commissions = Commission.where(user_id: @user)

    





    # Invoice.find_by(number: invoice.number, service_code: invoice.cnpj_contractor)
    # @invoices_uniq_cnpj = @list_invoice_number.sort_by {|i| i.created_at}











  end

  # def list_invoice_number
  #   @invoices = Invoice.all
  #   @invoices_uniq = @invoices.uniq(&:number)
  #   @list_invoice_number = []
  #   @invoices_uniq.each do |invoice|
  #     @list_invoice_number << Invoice.find_by(number: invoice.number)
  #   end
  #   @list_invoice_number.sort_by {|i| i.created_at}
  # end

  # def list_by_service_code
  #   @invoices = Invoice.all
  #   # @invoices_uniq = @invoices.uniq(&:service_code)
  #   @invoices_uniq = @invoices.uniq{ |invoice| [invoice.number, invoice.service_code] }
  #   @list_by_service_code = []
  #   @invoices_uniq.each do |invoice|
  #     @list_by_service_code << Invoice.find_by(number: invoice.number && service_code: invoice.service_code)
  #   end
  #   @list_by_service_code.sort_by {|i| i.created_at}
  # end

end
