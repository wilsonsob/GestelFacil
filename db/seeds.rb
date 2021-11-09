require 'csv'

# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

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

# # # Membros da Comissão da ANVISA
# # user7 = User.create!(full_name: 'Bruno Rodrigues', email: 'bruno@teste.com', password: '123456', admin: false)
# # user8 = User.create!(full_name: 'Paulo Alencar', email: 'paulo@teste.com', password: '123456', admin: false)

# # Membros da Comissão da SUDENE
# user9 = User.create!(full_name: 'Alexandre Silva', email: 'alexandre@teste.com', password: '123456', admin: false)
# user10 = User.create!(full_name: 'Maria Fernandes', email: 'maria@teste.com', password: '123456', admin: false)

# # # Membros da Comissão do COMAER
# # user11 = User.create!(full_name: 'Daniel Sales', email: 'daniel@teste.com', password: '123456', admin: false)
# # user12 = User.create!(full_name: 'Tiago Batista', email: 'tiago@teste.com', password: '123456', admin: false)
# # puts "Members of the commission created - done!!!"

contract1 = Contract.create!(number: '20/SUDENE/2019', cnpj_contractor: '09263130000191', cnpj_hired: '40432544000147', company: 'CLARO S.A.',
                             object: "Contratação de empresa prestadora de Sistema Móvel Celular (SMC), na modalidade Local e
                             Longa Distância Nacional (LDN) a serem utilizados pela SUDENE na localidade de Aracaju através de 04
                             (quatro) linhas celulares, pelo período de 12 (doze) meses, podendo ser prorrogado por sucessivos períodos,
                             até o limite de 60 (sessenta) meses.")

# # contract2 = Contract.create!(number: '15/COMAER/2020', cnpj_contractor: '00394429009329', cnpj_hired: '76535764000143', company: 'OI S.A.',
# #                              object: "Contratação de empresa prestadora de Serviço Telefônico Fixo Comutado (STFC), na modalidade Local e
# #                              Longa Distância Nacional (LDN) a serem utilizados pelo COMAER na localidade de Natal através de 06
# #                              (cinco) linhas diretas analógicas não residenciais (NRES), pelo período de 12 (doze) meses, podendo ser
# #                              prorrogado por sucessivos períodos, até o limite de 60 (sessenta) meses.")

# # contract3 = Contract.create!(number: '11/ANVISA/2018', cnpj_contractor: '03112386000111', cnpj_hired: '02421421000111', company: 'TIM S.A.',
# #                              object: "Contratação de empresa prestadora de Sistema Móvel Celular (SMC), na modalidade Local e
# #                              Longa Distância Nacional (LDN) a serem utilizados pela ANVISA na localidade de Fortaleza através de 04
# #                              (quatro) linhas celulares, pelo período de 12 (doze) meses, podendo ser prorrogado por sucessivos períodos,
# #                              até o limite de 60 (sessenta) meses.")

# # contract4 = Contract.create!(number: '14/COMAER/2020', cnpj_contractor: '00394429009329', cnpj_hired: '71208516000174', company: 'ALGAR TELECOM S/A',
# #                              object: "Contratação de empresa prestadora de Serviço Telefônico Fixo Comutado (STFC), na modalidade Local e
# #                              Longa Distância Nacional (LDN) a serem utilizados pelo COMAER na localidade de Maceió através de 05
# #                              (cinco) linhas diretas analógicas não residenciais (NRES), pelo período de 12 (doze) meses, podendo ser
# #                              prorrogado por sucessivos períodos, até o limite de 60 (sessenta) meses.")

# # contract5 = Contract.create!(number: '16/COMAER/2020', cnpj_contractor: '00394429009329', cnpj_hired: '02558157000162', company: 'TELEFÔNICA BRASIL S.A.',
# #                              object: "Contratação de empresa prestadora de Serviço Telefônico Fixo Comutado (STFC), na modalidade Local e
# #                              Longa Distância Nacional (LDN) a serem utilizados pelo COMAER na localidade de São Paulo através de 10
# #                              (dez) linhas diretas analógicas não residenciais (NRES), pelo período de 12 (doze) meses, podendo ser
# #                              prorrogado por sucessivos períodos, até o limite de 60 (sessenta) meses.")

# # contract6 = Contract.create!(number: '25/SUDENE/2020', cnpj_contractor: '09263130000191', cnpj_hired: '76535764000143', company: 'OI S.A.',
# #                              object: "Contratação de empresa prestadora de Serviço Telefônico Fixo Comutado (STFC), na modalidade Local e
# #                              Longa Distância Nacional (LDN) a serem utilizados pelo SUDENE na localidade de São Luís através de 08
# #                              (oito) linhas diretas analógicas não residenciais (NRES), pelo período de 12 (doze) meses, podendo ser
# #                              prorrogado por sucessivos períodos, até o limite de 60 (sessenta) meses.")

# # contract7 = Contract.create!(number: '03/SUDENE/2021', cnpj_contractor: '09263130000191', cnpj_hired: '02421421000111', company: 'TIM S.A.',
# #                              object: "Contratação de empresa prestadora de Sistema Móvel Celular (SMC), na modalidade Local e
# #                              Longa Distância Nacional (LDN) a serem utilizados pela SUDENE na localidade de Recife através de 20
# #                              (quatro) linhas celulares, pelo período de 12 (doze) meses, podendo ser prorrogado por sucessivos períodos,
# #                              até o limite de 60 (sessenta) meses.")

# # contract8 = Contract.create!(number: '02/ANVISA/2021', cnpj_contractor: '03112386000111', cnpj_hired: '40432544000147', company: 'CLARO S.A.',
# #                              object: "Contratação de empresa prestadora de Sistema Móvel Celular (SMC), na modalidade Local e
# #                              Longa Distância Nacional (LDN) a serem utilizados pela ANVISA na localidade de Curitiba através de 10
# #                              (dez) linhas celulares, pelo período de 12 (doze) meses, podendo ser prorrogado por sucessivos períodos,
# #                              até o limite de 60 (sessenta) meses.")

# # contract9 = Contract.create!(number: '19/ANVISA/2020', cnpj_contractor: '03112386000111', cnpj_hired: '76535764000143', company: 'BRASIL TELECOM S.A.',
# #                              object: "Contratação de empresa prestadora de Serviço Telefônico Fixo Comutado (STFC), na modalidade Local e
# #                              Longa Distância Nacional (LDN) a serem utilizados pelo ANVISA na localidade de Brasília através de 20
# #                              (vinte) linhas diretas analógicas não residenciais (NRES), pelo período de 12 (doze) meses, podendo ser
# #                              prorrogado por sucessivos períodos, até o limite de 60 (sessenta) meses.")

# # contract10 = Contract.create!(number: '10/COMAER/2017', cnpj_contractor: '00394429009329', cnpj_hired: '02449992005638', company: 'VIVO S.A.',
# #                               object: "Contratação de empresa prestadora de Sistema Móvel Celular (SMC), na modalidade Local e
# #                               Longa Distância Nacional (LDN) a serem utilizados pela COMAER na localidade de Rio de Janeiro através de 50
# #                               (cinquenta) linhas celulares, pelo período de 12 (doze) meses, podendo ser prorrogado por sucessivos períodos,
# #                               até o limite de 60 (sessenta) meses.")

# puts "Contracts - done!!!"

# # Comissões da SUDENE
# commission1 = Commission.create!(note: 'Portaria SUDENE N°30, de 15 de outubro de 2021.',
#                                  contract_id: contract1.id, user_id: user3.id)

# commission2 = Commission.create!(note: 'Portaria SUDENE N°30, de 15 de outubro de 2021.',
#                                  contract_id: contract1.id, user_id: user6.id)

# commission3 = Commission.create!(note: 'Portaria SUDENE N°30, de 15 de outubro de 2021.',
#                                  contract_id: contract1.id, user_id: user9.id)

# commission4 = Commission.create!(note: 'Portaria SUDENE N°30, de 15 de outubro de 2021.',
#                                  contract_id: contract1.id, user_id: user10.id)

# # commission5 = Commission.create!(note: 'Portaria SUDENE N°30, de 15 de outubro de 2021.',
# #                                  contract_id: contract6.id, user_id: user3.id)

# # commission6 = Commission.create!(note: 'Portaria SUDENE N°30, de 15 de outubro de 2021.',
# #                                  contract_id: contract6.id, user_id: user6.id)

# # commission7 = Commission.create!(note: 'Portaria SUDENE N°30, de 15 de outubro de 2021.',
# #                                  contract_id: contract6.id, user_id: user9.id)

# # commission8 = Commission.create!(note: 'Portaria SUDENE N°30, de 15 de outubro de 2021.',
# #                                  contract_id: contract6.id, user_id: user10.id)

# # commission9 = Commission.create!(note: 'Portaria SUDENE N°30, de 15 de outubro de 2021.',
# #                                  contract_id: contract7.id, user_id: user3.id)

# # commission10 = Commission.create!(note: 'Portaria SUDENE N°30, de 15 de outubro de 2021.',
# #                                   contract_id: contract7.id, user_id: user6.id)

# # commission11 = Commission.create!(note: 'Portaria SUDENE N°30, de 15 de outubro de 2021.',
# #                                   contract_id: contract7.id, user_id: user9.id)

# # commission12 = Commission.create!(note: 'Portaria SUDENE N°30, de 15 de outubro de 2021.',
# #                                   contract_id: contract7.id, user_id: user10.id)

# puts "SUDENE commissions - done!"

# # # Comissões da ANVISA
# # commission13 = Commission.create!(note: 'Portaria ANVISA N° 12, de 4 de fevereiro de 2021.',
# #                                   contract_id: contract3.id, user_id: user1.id)

# # commission14 = Commission.create!(note: 'Portaria ANVISA N° 12, de 4 de fevereiro de 2021.',
# #                                   contract_id: contract3.id, user_id: user4.id)

# # commission15 = Commission.create!(note: 'Portaria ANVISA N° 12, de 4 de fevereiro de 2021.',
# #                                   contract_id: contract3.id, user_id: user7.id)

# # commission16 = Commission.create!(note: 'Portaria ANVISA N° 12, de 4 de fevereiro de 2021.',
# #                                   contract_id: contract3.id, user_id: user8.id)

# # commission17 = Commission.create!(note: 'Portaria ANVISA N° 12, de 4 de fevereiro de 2021.',
# #                                   contract_id: contract8.id, user_id: user1.id)

# # commission18 = Commission.create!(note: 'Portaria ANVISA N° 12, de 4 de fevereiro de 2021.',
# #                                   contract_id: contract8.id, user_id: user4.id)

# # commission19 = Commission.create!(note: 'Portaria ANVISA N° 12, de 4 de fevereiro de 2021.',
# #                                   contract_id: contract8.id, user_id: user7.id)

# # commission20 = Commission.create!(note: 'Portaria ANVISA N° 12, de 4 de fevereiro de 2021.',
# #                                   contract_id: contract8.id, user_id: user8.id)

# # commission21 = Commission.create!(note: 'Portaria ANVISA N° 12, de 4 de fevereiro de 2021.',
# #                                   contract_id: contract9.id, user_id: user1.id)

# # commission22 = Commission.create!(note: 'Portaria ANVISA N° 12, de 4 de fevereiro de 2021.',
# #                                   contract_id: contract9.id, user_id: user4.id)

# # commission23 = Commission.create!(note: 'Portaria ANVISA N° 12, de 4 de fevereiro de 2021.',
# #                                   contract_id: contract9.id, user_id: user7.id)

# # commission24 = Commission.create!(note: 'Portaria ANVISA N° 12, de 4 de fevereiro de 2021.',
# #                                   contract_id: contract9.id, user_id: user8.id)

# # puts "ANVISA commissions - done!"

# # # Comissões do COMAER
# # commission25 = Commission.create!(note: 'Portaria COMAER N° 1, de 6 de janeiro de 2021.',
# #                                   contract_id: contract2.id, user_id: user2.id)

# # commission26 = Commission.create!(note: 'Portaria COMAER N° 1, de 6 de janeiro de 2021.',
# #                                   contract_id: contract2.id, user_id: user5.id)

# # commission27 = Commission.create!(note: 'Portaria COMAER N° 1, de 6 de janeiro de 2021.',
# #                                   contract_id: contract2.id, user_id: user11.id)

# # commission28 = Commission.create!(note: 'Portaria COMAER N° 1, de 6 de janeiro de 2021.',
# #                                   contract_id: contract2.id, user_id: user12.id)

# # commission29 = Commission.create!(note: 'Portaria COMAER N° 1, de 6 de janeiro de 2021.',
# #                                   contract_id: contract4.id, user_id: user2.id)

# # commission30 = Commission.create!(note: 'Portaria COMAER N° 1, de 6 de janeiro de 2021.',
# #                                   contract_id: contract4.id, user_id: user5.id)

# # commission31 = Commission.create!(note: 'Portaria COMAER N° 1, de 6 de janeiro de 2021.',
# #                                   contract_id: contract4.id, user_id: user11.id)

# # commission32 = Commission.create!(note: 'Portaria COMAER N° 1, de 6 de janeiro de 2021.',
# #                                   contract_id: contract4.id, user_id: user12.id)

# # commission33 = Commission.create!(note: 'Portaria COMAER N° 1, de 6 de janeiro de 2021.',
# #                                   contract_id: contract5.id, user_id: user2.id)

# # commission34 = Commission.create!(note: 'Portaria COMAER N° 1, de 6 de janeiro de 2021.',
# #                                   contract_id: contract5.id, user_id: user5.id)

# # commission35 = Commission.create!(note: 'Portaria COMAER N° 1, de 6 de janeiro de 2021.',
# #                                   contract_id: contract5.id, user_id: user11.id)

# # commission36 = Commission.create!(note: 'Portaria COMAER N° 1, de 6 de janeiro de 2021.',
# #                                   contract_id: contract5.id, user_id: user12.id)

# # commission37 = Commission.create!(note: 'Portaria COMAER N° 1, de 6 de janeiro de 2021.',
# #                                   contract_id: contract10.id, user_id: user2.id)

# # commission38 = Commission.create!(note: 'Portaria COMAER N° 1, de 6 de janeiro de 2021.',
# #                                   contract_id: contract10.id, user_id: user5.id)

# # commission39 = Commission.create!(note: 'Portaria COMAER N° 1, de 6 de janeiro de 2021.',
# #                                   contract_id: contract10.id, user_id: user11.id)

# # commission40 = Commission.create!(note: 'Portaria COMAER N° 1, de 6 de janeiro de 2021.',
# #                                   contract_id: contract10.id, user_id: user12.id)

# # puts "COMAER commissions - done!"

# # puts "Commissions - done!!!"

term1 = Term.create!(number: 'Contrato N° 20/SUDENE/2019', date_start: '21/08/2019', date_end: '20/08/2020', description: 'Primeiro ano do contrato.', contract_id: contract1.id)
# term2 = Term.create!(number: 'Termo Aditivo N° 01', date_start: '21/08/2020', date_end: '20/08/2021', description: 'Segundo ano do contrato.', contract_id: contract1.id)
# term3 = Term.create!(number: 'Termo Aditivo N° 02', date_start: '21/08/2021', date_end: '20/08/2022', description: 'Terceiro ano do contrato.', contract_id: contract1.id)

# # term4 = Term.create!(number: 'Contrato N° 15/COMAER/2020', date_start: '31/12/2020', date_end: '30/12/2021', description: 'Primeiro ano do contrato.', contract_id: contract2.id)

# # term5 = Term.create!(number: 'Contrato N° 11/ANVISA/2018', date_start: '15/12/2018', date_end: '14/12/2019', description: 'Primeiro ano do contrato.', contract_id: contract3.id)
# # term6 = Term.create!(number: 'Termo Aditivo N° 01', date_start: '15/12/2019', date_end: '14/12/2020', description: 'Segundo ano do contrato.', contract_id: contract3.id)
# # term7 = Term.create!(number: 'Termo Aditivo N° 02', date_start: '15/12/2020', date_end: '14/12/2021', description: 'Terceiro ano do contrato.', contract_id: contract3.id)

# # term8 = Term.create!(number: 'Contrato N° 14/COMAER/2020', date_start: '03/02/2020', date_end: '02/02/2021', description: 'Primeiro ano do contrato.', contract_id: contract4.id)
# # term9 = Term.create!(number: 'Termo Aditivo N° 01', date_start: '03/02/2021', date_end: '02/02/2022', description: 'Segundo ano do contrato.', contract_id: contract4.id)

# # term10 = Term.create!(number: '16/COMAER/2020', date_start: '25/11/2020', date_end: '24/11/2021', description: 'Primeiro ano do contrato.', contract_id: contract5.id)

# # term11 = Term.create!(number: '25/SUDENE/2020', date_start: '27/11/2020', date_end: '26/11/2021', description: 'Primeiro ano do contrato.', contract_id: contract6.id)

# # term12 = Term.create!(number: '03/SUDENE/2021', date_start: '10/10/2021', date_end: '09/10/2022', description: 'Primeiro ano do contrato.', contract_id: contract7.id)

# # term13 = Term.create!(number: '02/ANVISA/2021', date_start: '28/01/2021', date_end: '27/01/2022', description: 'Primeiro ano do contrato.', contract_id: contract8.id)

# # term14 = Term.create!(number: '19/ANVISA/2020', date_start: '01/12/2020', date_end: '30/11/2021', description: 'Primeiro ano do contrato.', contract_id: contract9.id)

# # term16 = Term.create!(number: '10/COMAER/2017', date_start: '25/09/2017', date_end: '24/09/2018', description: 'Primeiro ano do contrato.', contract_id: contract10.id)
# # term17 = Term.create!(number: 'Termo Aditivo N° 01', date_start: '25/09/2018', date_end: '24/09/2019', description: 'Segundo ano do contrato.', contract_id: contract10.id)
# # term18 = Term.create!(number: 'Termo Aditivo N° 02', date_start: '25/09/2019', date_end: '24/09/2020', description: 'Terceiro ano do contrato.', contract_id: contract10.id)
# # term19 = Term.create!(number: 'Termo Aditivo N° 03', date_start: '25/09/2020', date_end: '24/09/2021', description: 'Quarto ano do contrato.', contract_id: contract10.id)
# # term20 = Term.create!(number: 'Termo Aditivo N° 04', date_start: '25/09/2021', date_end: '24/09/2022', description: 'Quinto ano do contrato. Iniciar planejamento para novo processo licitatório.', contract_id: contract10.id)

# puts "Terms - done!!!"

# puts "Iniciando seed de invoices..."

csv_options = { col_sep: ';', quote_char: '"', headers: :first_row }
# csv_options = { col_sep: ';', headers: :first_row }

filepath = 'db/invoice.csv'

CSV.foreach(filepath, csv_options) do |row|
  # Here, row is an array of columns

  invoice1 = Invoice.create!(number: row[1],
                              service_code: row[18],
                              value: row[20],
                              cnpj_contractor: row[2],
                              term_id: term1.id)
end

  # puts "#{row[0]} | #{row[1]} | #{row[2]} | #{row[3]} |
  #     #{row[4]} | #{row[5]} | #{row[6]} | #{row[7]}"

puts "Invoices - done!!!"

# puts "All seeds completed succesfully!!!"
