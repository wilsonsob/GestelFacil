class ChecksController < ApplicationController

  def analysis
    # https://guides.rubyonrails.org/active_record_querying.html#eager-loading-associations
    # @invoices = Invoice.all
    # @invoices = Invoice.all.limit(5) # funciona!
    # @invoices = Invoice.where(service_code: '91801') # funciona!
    # @invoices = Invoice.all.find_by_number!(:number) # nao funciona
    # @invoices = Invoice.all.where(number: @invoice.number) # nao funciona
    # @invoices = Invoice.select(:number).map(&:number) # nao funciona para trazer as instancias, mas listou todos os numeros de fatura
    # @invoices.uniq.count nao quebra mas nao serve
    @invoices = Invoice.all
    @invoices_uniq = @invoices.uniq(&:number)
    @list_invoice_number = []
    @invoices_uniq.each do |invoice|
      @list_invoice_number << Invoice.find_by(number: invoice.number)
    end
    @list_invoice_number.sort_by {|i| i.created_at}
  end

  # def list_invoice_number
  #   @list_invoice_number = []
  #   @invoices_uniq.each do |invoice|
  #     @list_invoice_number << Invoice.find_by_(number: invoice.number)
  #   end
  #   @list_invoice_number.sort_by {|i| i.created_at}
  # end

end
