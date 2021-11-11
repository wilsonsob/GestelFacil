require 'csv'

Result.destroy_all
Invoice.destroy_all
Item.destroy_all
Term.destroy_all
Commission.destroy_all
Contract.destroy_all
User.destroy_all

puts "destroy done!!!"

user1 = User.create!(full_name: 'Luanda Admin', email: 'luanda@admin.com', password: '123456', admin: true)
user2 = User.create!(full_name: 'Eugenia Admin', email: 'eugenia@admin.com', password: '123456', admin: true)
user3 = User.create!(full_name: 'Wilson Admin', email: 'wilson@admin.com', password: '123456', admin: true)
puts "admins (gestor de contrato): Eugenia, Luanda e Wilson - done!!!"

user4 = User.create!(full_name: 'Luanda User', email: 'luanda@teste.com', password: '123456', admin: false)
user5 = User.create!(full_name: 'Eugenia User', email: 'eugenia@teste.com', password: '123456', admin: false)
user6 = User.create!(full_name: 'Wilson User', email: 'wilson@teste.com', password: '123456', admin: false)
puts "common profiles: Eugenia, Luanda e Wilson - done!!!"

contract1 = Contract.create!(number: '030/BARF - CINDACTA III/2020-2012310', cnpj_contractor: '00394429009329', cnpj_hired: '76535764000143', company: 'OI S.A.',
                             object: "Contratação de empresa prestadora de Serviço Telefônico Fixo Comutado (STFC), na modalidade Local e
                             Longa Distância Nacional (LDN) a serem utilizados pelo Destacamento de Controle do Espaço Aéreo de Natal através de 06
                             (seis) linhas diretas analógicas não residenciais (NRES), pelo período de 12 (doze) meses, podendo ser
                             prorrogado por sucessivos períodos, até o limite de 60 (sessenta) meses.")

puts "Contracts - done!!!"

# Comissões do COMAER
commision1 = Commission.create!(note: 'Portaria CINDACTA III N° 138/AIAC, de 21 de outubro de 2021. Publicado no Boletim Interno Ostensivo N° 201, de 25/10/2021.',
                                  contract_id: contract1.id, user_id: user1.id)

commision2 = Commission.create!(note: 'Portaria CINDACTA III N° 138/AIAC, de 21 de outubro de 2021. Publicado no Boletim Interno Ostensivo N° 201, de 25/10/2021.',
                                  contract_id: contract1.id, user_id: user2.id)

commision3 = Commission.create!(note: 'Portaria CINDACTA III N° 138/AIAC, de 21 de outubro de 2021. Publicado no Boletim Interno Ostensivo N° 201, de 25/10/2021.',
                                  contract_id: contract1.id, user_id: user3.id)

commision4 = Commission.create!(note: 'Portaria CINDACTA III N° 138/AIAC, de 21 de outubro de 2021. Publicado no Boletim Interno Ostensivo N° 201, de 25/10/2021.',
                                  contract_id: contract1.id, user_id: user4.id)

commision5 = Commission.create!(note: 'Portaria CINDACTA III N° 138/AIAC, de 21 de outubro de 2021. Publicado no Boletim Interno Ostensivo N° 201, de 25/10/2021.',
                                  contract_id: contract1.id, user_id: user5.id)

commision6 = Commission.create!(note: 'Portaria CINDACTA III N° 138/AIAC, de 21 de outubro de 2021. Publicado no Boletim Interno Ostensivo N° 201, de 25/10/2021.',
                                  contract_id: contract1.id, user_id: user6.id)

puts "Commissions - done!!!"

term1 = Term.create!(number: '030/BARF - CINDACTA III/2020-2012310', date_start: '30/12/2020', date_end: '29/12/2021', description: 'Primeiro ano do contrato.', contract_id: contract1.id)
puts "Terms - done!!!"

item1 = Item.create!(item_number: 41, item_title: 'Assinatura de Linhas Analógicas não residenciais (NRES)',
                     service_code: 10538, quantity: 6, price: 99.70, term_id: term1.id)

item2 = Item.create!(item_number: 42, item_title: 'Chamadas Locais Fixo-Fixo STFC-Local-FF',
                     service_code: 60057, quantity: 900, price: 0.10, term_id: term1.id)

item3 = Item.create!(item_number: 43, item_title: 'Chamadas Locais Fixo-Móvel STFC-Local-FM (VC1)',
                     service_code: 60720, quantity: 35, price: 0.26, term_id: term1.id)

item4 = Item.create!(item_number: 44, item_title: 'Taxa de Instalação/Habilitação de serviço de telefonia STFC',
                     service_code: 32186, quantity: 6, price: 77.95, term_id: term1.id)

item5 = Item.create!(item_number: 49, item_title: 'Chamadas LDN Fixo-Fixo STFC-LDN-FF (Degraus 1 a 4)',
                     service_code: 69102, quantity: 1828, price: 0.36, term_id: term1.id)

item6 = Item.create!(item_number: 50, item_title: 'Chamadas LDN Fixo-Móvel STFC-LDN-FM (VC2 e VC3)',
                     service_code: 68335, quantity: 305, price: 0.36, term_id: term1.id)

puts "Items - done!!!"

puts "Starting seed to invoices from CSV file..."

csv_options = { col_sep: ';', quote_char: '"', headers: :first_row }

filepath = 'db/invoice.csv'

CSV.foreach(filepath, csv_options) do |row|
  # Here, row is an array of columns
  a = row[20]
  b = a.partition(',')
  c = b[0].to_i
  d = b[2]
  e = (c.to_s + '.' + d).to_f

  Invoice.create!(number: row[1],
                  service_code: row[18],
                  value: e,
                  cnpj_contractor: row[2],
                  service_name: row[19],
                  date_invoice: row[39],
                  term_id: term1.id)
end

puts "Invoices - done!!!"

puts "All seeds completed succesfully!!!"
