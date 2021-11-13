prawn_document do |pdf|
  pdf.text 'Relatório:'
  pdf.move_down 20
  pdf.text 'Cnpj/nº contrato'
  pdf.table @invoices_uniq_cnpj.collect{|p| [p.number, p.cnpj_contractor]}
  pdf.text 'Analise:'


end
