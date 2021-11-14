require 'csv'

Result.destroy_all
Invoice.destroy_all
Item.destroy_all
Term.destroy_all
Commission.destroy_all
Contract.destroy_all
User.destroy_all

puts "destroy done!!!"

user1 = User.create!(full_name: 'Luanda Leitao', email: 'luanda@admin.com', password: '123456', admin: true)
user2 = User.create!(full_name: 'Eugenia Brandao', email: 'eugenia@admin.com', password: '123456', admin: true)
user3 = User.create!(full_name: 'Wilson Filho', email: 'wilson@admin.com', password: '123456', admin: true)
user4 = User.create!(full_name: 'Conceicao Evaristo', email: 'conceicao@teste.com', password: '123456', admin: false)
user5 = User.create!(full_name: 'Ricardo Terto', email: 'ricardo@teste.com', password: '123456', admin: false)
user6 = User.create!(full_name: 'Ana Maria Goncalves', email: 'ana@teste.com', password: '123456', admin: false)
user7 = User.create!(full_name: 'Marcelo Vieira', email: 'marcelo@teste.com', password: '123456', admin: false)
puts "admins (gestor de contrato): Eugenia, Luanda e Wilson - done!!!"

# user4 = User.create!(full_name: 'Luanda Leitão', email: 'luanda@teste.com', password: '123456', admin: false)
# user5 = User.create!(full_name: 'Eugenia Brandão', email: 'eugenia@teste.com', password: '123456', admin: false)
# user6 = User.create!(full_name: 'Wilson Filho', email: 'wilson@teste.com', password: '123456', admin: false)
# puts "common profiles: Eugenia, Luanda e Wilson - done!!!"

contract1 = Contract.create!(number: '09/2021', cnpj_contractor: '00489828006005', cnpj_hired: '76535764000143', company: 'OI S.A.',
                             object: "Serviço Telefônico Fixo Comutado (STFC), na modalidade Local e Longa Distância Nacional (LDN).")

contract2 = Contract.create!(number: '30/2019', cnpj_contractor: '00489828006005', cnpj_hired: '40432544000147', company: 'CLARO S.A.',
                             object: "Serviço Telefônico Fixo Comutado (STFC), na modalidade Discagem Direta Gratuita (DDG), utilizando o prefixo 0800 (central de atendimento).")

contract3 = Contract.create!(number: '01/2020', cnpj_contractor: '00489828006005', cnpj_hired: '02449992005638', company: 'VIVO S.A.',
                             object: "Serviço Móvel Celular (SMC), na modalidade Local, Longa Distância Nacional (LDN) e Longa Distância Internacional (LDI)")

contract4 = Contract.create!(number: '10/2019', cnpj_contractor: '00489828006005', cnpj_hired: '04206050000180', company: 'TIM CELULAR',
                             object:  "Serviço Telefônico Fixo Comutado (STFC), na modalidade Local, Longa Distância Nacional (LDN) e Longa Distância Internacional (LDI).")

contract5 = Contract.create!(number: '13/2019', cnpj_contractor: '00489828006005', cnpj_hired: '91663350000193', company: 'CELL SIGNAL',
                             object: "Serviço Móvel Celular (SMC), na modalidade Local, Longa Distância Nacional (LDN) e
                                      Longa Distância Internacional (LDI)")

puts "Contracts - done!!!"

# Comissões do COMAER
commision1 = Commission.create!(note: 'Portaria N° 135, de 20 de janeiro 2021. Publicado no Boletim Interno N° 15, de 25/01/2021.',
                                  contract_id: contract1.id, user_id: user1.id)

commision2 = Commission.create!(note: 'Portaria N° 135, de 20 de janeiro 2021. Publicado no Boletim Interno N° 15, de 25/01/2021.',
                                  contract_id: contract1.id, user_id: user2.id)

commision3 = Commission.create!(note: 'Portaria N° 135, de 20 de janeiro 2021. Publicado no Boletim Interno N° 15, de 25/01/2021.',
                                  contract_id: contract1.id, user_id: user3.id)

commision3 = Commission.create!(note: 'Portaria N° 135, de 20 de janeiro 2021. Publicado no Boletim Interno N° 15, de 25/01/2021.',
                                  contract_id: contract2.id, user_id: user6.id)

puts "Commissions - done!!!"

term1 = Term.create!(number: '01', date_start: '02/04/2021', date_end: '01/04/2022', description: 'Primeiro ano do contrato.', contract_id: contract1.id)
puts "Terms - done!!!"

item1 = Item.create!(item_number: 41, item_title: 'Assinatura de Linhas Analógicas não residenciais (NRES)',
                     service_code: 10538, quantity: 6, price: 99.70, term_id: term1.id)

item2 = Item.create!(item_number: 07, item_title: 'Chamadas Locais Fixo-Fixo STFC-Local-FF',
                     service_code: 60057, quantity: 2700, price: 0.10, term_id: term1.id)

item3 = Item.create!(item_number: 11, item_title: 'Chamadas Locais Fixo-Móvel STFC-Local-FM (VC1)',
                     service_code: 60720, quantity: 105, price: 0.26, term_id: term1.id)

item4 = Item.create!(item_number: 12, item_title: 'Taxa de Instalação/Habilitação de serviço de telefonia STFC',
                     service_code: 32186, quantity: 18, price: 77.95, term_id: term1.id)

item5 = Item.create!(item_number: 13, item_title: 'Chamadas LDN Fixo-Fixo STFC-LDN-FF (Degraus 1 a 4)',
                     service_code: 69102, quantity: 5484, price: 0.36, term_id: term1.id)

item6 = Item.create!(item_number: 14, item_title: 'Chamadas LDN Fixo-Móvel STFC-LDN-FM (VC2 e VC3)',
                     service_code: 68335, quantity: 915, price: 0.36, term_id: term1.id)


term2 = Term.create!(number: '03', date_start: '09/05/2021', date_end: '08/05/2022', description: 'Segundo termo aditivo ao contrato.', contract_id: contract2.id)
puts "Terms - done!!!"

item7 = Item.create!(item_number: 1, item_title: 'Assinatura mensal',
                     service_code: 10538, quantity: 48, price: 869.00, term_id: term2.id)

item8 = Item.create!(item_number: 2, item_title: 'Trafego de chamadas fixo-fixo local',
                     service_code: 60057, quantity: 5871, price: 0.17, term_id: term2.id)

item9 = Item.create!(item_number: 3, item_title: 'Trafego de chamadas fixo-fixo LDN',
                     service_code: 60720, quantity: 132.568, price: 0.08, term_id: term2.id)

item10 = Item.create!(item_number: 4, item_title: 'Trafego de chamadas movel-fixo local',
                     service_code: 32186, quantity: 4330, price: 0.09, term_id: term2.id)

item11 = Item.create!(item_number: 5, item_title: 'Trafego de chamadas movel-fixo LDN',
                     service_code: 69102, quantity: 77922, price: 0.25, term_id: term2.id)

term3 = Term.create!(number: '02', date_start: '09/05/2020', date_end: '08/05/2021', description: 'Primeiro termo aditivo ao contrato.', contract_id: contract2.id)
puts "Terms - done!!!"

item12 = Item.create!(item_number: 1, item_title: 'Assinatura mensal',
                     service_code: 10538, quantity: 48, price: 849.00, term_id: term3.id)

item13 = Item.create!(item_number: 2, item_title: 'Trafego de chamadas fixo-fixo local',
                     service_code: 60057, quantity: 5871, price: 0.12, term_id: term3.id)

item14 = Item.create!(item_number: 3, item_title: 'Trafego de chamadas fixo-fixo LDN',
                     service_code: 60720, quantity: 132.568, price: 0.05, term_id: term3.id)

item15 = Item.create!(item_number: 4, item_title: 'Trafego de chamadas movel-fixo local',
                     service_code: 32186, quantity: 4330, price: 0.05, term_id: term3.id)

item16 = Item.create!(item_number: 5, item_title: 'Trafego de chamadas movel-fixo LDN',
                     service_code: 69102, quantity: 77922, price: 0.21, term_id: term3.id)

term4 = Term.create!(number: '01', date_start: '09/05/2019', date_end: '08/05/2020', description: 'Assinatura do contrato.', contract_id: contract2.id)
puts "Terms - done!!!"

item1 = Item.create!(item_number: 1, item_title: 'Assinatura mensal',
                     service_code: 10538, quantity: 40, price: 835.00, term_id: term4.id)

item2 = Item.create!(item_number: 2, item_title: 'Trafego de chamadas fixo-fixo local',
                     service_code: 60057, quantity: 5871, price: 0.11, term_id: term4.id)

item3 = Item.create!(item_number: 3, item_title: 'Trafego de chamadas fixo-fixo LDN',
                     service_code: 60720, quantity: 132.568, price: 0.05, term_id: term4.id)

item4 = Item.create!(item_number: 4, item_title: 'Trafego de chamadas movel-fixo local',
                     service_code: 32186, quantity: 4330, price: 0.05, term_id: term4.id)

item5 = Item.create!(item_number: 5, item_title: 'Trafego de chamadas movel-fixo LDN',
                     service_code: 69102, quantity: 77922, price: 0.20, term_id: term4.id)


puts "Items - done!!!"

puts "Starting seed to invoices from CSV file..."

csv_options = { col_sep: ';', quote_char: '"', headers: :first_row }

filepath = 'db/invoice.csv'

# Arquivo para testar o blaze (faturas de fev a set)
# filepath = 'db/invoice2.csv'

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
                  cnpj_contractor: "00489828000101",
                  service_name: row[19],
                  date_invoice: row[39],
                  term_id: term1.id)

  Invoice.create!(number: "1000048500064",
                  service_code: row[18],
                  value: e,
                  cnpj_contractor: "00489828006005",
                  service_name: row[19],
                  date_invoice: ("2021-07-01"),
                  term_id: term2.id)

  Invoice.create!(number: "1000048500065",
                  service_code: row[18],
                  value: e,
                  cnpj_contractor: "00489828006005",
                  service_name: row[19],
                  date_invoice: ("2021-08-01"),
                  term_id: term2.id)

    Invoice.create!(number: "1000048500055",
                  service_code: row[18],
                  value: e,
                  cnpj_contractor: "00489828006005",
                  service_name: row[19],
                  date_invoice: ("2021-09-01"),
                  term_id: term2.id)
end

puts "Invoices - done!!!"

puts "All seeds completed succesfully!!!"
