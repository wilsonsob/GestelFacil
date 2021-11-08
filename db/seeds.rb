# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

puts "destroy done!!!"

user1 = User.create(full_name: 'Luanda Admin', email: 'luanda@admin.com', password: '123456', admin: true)
user2 = User.create(full_name: 'Eugenia Admin', email: 'eugenia@admin.com', password: '123456', admin: true)
user3 = User.create(full_name: 'Wilson Admin', email: 'wilson@admin.com', password: '123456', admin: true)
puts "admins (gestor de contrato): Eugenia, Luanda e Wilson - done!!!"

user4 = User.create(full_name: 'Luanda User', email: 'luanda@teste.com', password: '123456', admin: false)
user5 = User.create(full_name: 'Eugenia User', email: 'eugenia@teste.com', password: '123456', admin: false)
user6 = User.create(full_name: 'Wilson User', email: 'wilson@teste.com', password: '123456', admin: false)
puts "common profiles: Eugenia, Luanda e Wilson - done!!!"

contract1 = Contract.create(number: '20/SUDENE/2019', cnpj_contractor: '09263130000191', cnpj_hired: '40432544000147', company: 'CLARO S.A.',
                            object: "Contratação de empresa prestadora de Sistema Móvel Celular (SMC), na modalidade Local e
                            Longa Distância Nacional (LDN) a serem utilizados pela SUDENE na localidade de Aracaju através de 04
                            (quatro) linhas celulares, pelo período de 12 (doze) meses, podendo ser prorrogado por sucessivos períodos,
                            até o limite de 60 (sessenta) meses.")

contract2 = Contract.create(number: '15/COMAER/2020', cnpj_contractor: '00394429009329', cnpj_hired: '76535764000143', company: 'OI S.A.',
                            object: "Contratação de empresa prestadora de Serviço Telefônico Fixo Comutado (STFC), na modalidade Local e
                            Longa Distância Nacional (LDN) a serem utilizados pelo COMAER na localidade de Natal através de 06
                            (cinco) linhas diretas analógicas não residenciais (NRES), pelo período de 12 (doze) meses, podendo ser
                            prorrogado por sucessivos períodos, até o limite de 60 (sessenta) meses.")

contract3 = Contract.create(number: '11/ANVISA/2018', cnpj_contractor: '03112386000111', cnpj_hired: '02421421000111', company: 'TIM S.A.',
                            object: "Contratação de empresa prestadora de Sistema Móvel Celular (SMC), na modalidade Local e
                            Longa Distância Nacional (LDN) a serem utilizados pela ANVISA na localidade de Fortaleza através de 04
                            (quatro) linhas celulares, pelo período de 12 (doze) meses, podendo ser prorrogado por sucessivos períodos,
                            até o limite de 60 (sessenta) meses.")

contract4 = Contract.create(number: '14/COMAER/2020', cnpj_contractor: '00394429009329', cnpj_hired: '71208516000174', company: 'ALGAR TELECOM S/A',
                            object: "Contratação de empresa prestadora de Serviço Telefônico Fixo Comutado (STFC), na modalidade Local e
                            Longa Distância Nacional (LDN) a serem utilizados pelo COMAER na localidade de Maceió através de 05
                            (cinco) linhas diretas analógicas não residenciais (NRES), pelo período de 12 (doze) meses, podendo ser
                            prorrogado por sucessivos períodos, até o limite de 60 (sessenta) meses.")

contract5 = Contract.create(number: '16/COMAER/2020', cnpj_contractor: '00394429009329', cnpj_hired: '02558157000162', company: 'TELEFÔNICA BRASIL S.A.',
                            object: "Contratação de empresa prestadora de Serviço Telefônico Fixo Comutado (STFC), na modalidade Local e
                            Longa Distância Nacional (LDN) a serem utilizados pelo COMAER na localidade de São Paulo através de 10
                            (dez) linhas diretas analógicas não residenciais (NRES), pelo período de 12 (doze) meses, podendo ser
                            prorrogado por sucessivos períodos, até o limite de 60 (sessenta) meses.")

contract6 = Contract.create(number: '25/SUDENE/2020', cnpj_contractor: '09263130000191', cnpj_hired: '76535764000143', company: 'OI S.A.',
                            object: "Contratação de empresa prestadora de Serviço Telefônico Fixo Comutado (STFC), na modalidade Local e
                            Longa Distância Nacional (LDN) a serem utilizados pelo SUDENE na localidade de São Luís através de 08
                            (oito) linhas diretas analógicas não residenciais (NRES), pelo período de 12 (doze) meses, podendo ser
                            prorrogado por sucessivos períodos, até o limite de 60 (sessenta) meses.")

contract7 = Contract.create(number: '03/SUDENE/2021', cnpj_contractor: '09263130000191', cnpj_hired: '02421421000111', company: 'TIM S.A.',
                            object: "Contratação de empresa prestadora de Sistema Móvel Celular (SMC), na modalidade Local e
                            Longa Distância Nacional (LDN) a serem utilizados pela SUDENE na localidade de Recife através de 20
                            (quatro) linhas celulares, pelo período de 12 (doze) meses, podendo ser prorrogado por sucessivos períodos,
                            até o limite de 60 (sessenta) meses.")

contract8 = Contract.create(number: '02/ANVISA/2021', cnpj_contractor: '03112386000111', cnpj_hired: '40432544000147', company: 'CLARO S.A.',
                            object: "Contratação de empresa prestadora de Sistema Móvel Celular (SMC), na modalidade Local e
                            Longa Distância Nacional (LDN) a serem utilizados pela ANVISA na localidade de Curitiba através de 10
                            (dez) linhas celulares, pelo período de 12 (doze) meses, podendo ser prorrogado por sucessivos períodos,
                            até o limite de 60 (sessenta) meses.")

contract9 = Contract.create(number: '19/ANVISA/2020', cnpj_contractor: '03112386000111', cnpj_hired: '76535764000143', company: 'BRASIL TELECOM S.A.',
                            object: "Contratação de empresa prestadora de Serviço Telefônico Fixo Comutado (STFC), na modalidade Local e
                            Longa Distância Nacional (LDN) a serem utilizados pelo ANVISA na localidade de Brasília através de 20
                            (vinte) linhas diretas analógicas não residenciais (NRES), pelo período de 12 (doze) meses, podendo ser
                            prorrogado por sucessivos períodos, até o limite de 60 (sessenta) meses.")

contract10 = Contract.create(number: '10/COMAER/2017', cnpj_contractor: '00394429009329', cnpj_hired: '02449992005638', company: 'VIVO S.A.',
                             object: "Contratação de empresa prestadora de Sistema Móvel Celular (SMC), na modalidade Local e
                             Longa Distância Nacional (LDN) a serem utilizados pela COMAER na localidade de Rio de Janeiro através de 50
                             (cinquenta) linhas celulares, pelo período de 12 (doze) meses, podendo ser prorrogado por sucessivos períodos,
                             até o limite de 60 (sessenta) meses.")

puts "Contracts - done!!!"

term1 = Term.create(number: 'Contrato N° 20/SUDENE/2019', date_start: '21/08/2019', date_end: '20/08/2020', description: 'Primeiro ano do contrato.', contract_id: contract1)
term2 = Term.create(number: 'Termo Aditivo N° 01', date_start: '21/08/2020', date_end: '20/08/2021', description: 'Segundo ano do contrato.', contract_id: contract1)
term3 = Term.create(number: 'Termo Aditivo N° 02', date_start: '21/08/2021', date_end: '20/08/2022', description: 'Terceiro ano do contrato.', contract_id: contract1)

term4 = Term.create(number: 'Contrato N° 15/COMAER/2020', date_start: '31/12/2020', date_end: '30/12/2021', description: 'Primeiro ano do contrato.', contract_id: contract2)

term5 = Term.create(number: 'Contrato N° 11/ANVISA/2018', date_start: '15/12/2018', date_end: '14/12/2019', description: 'Primeiro ano do contrato.', contract_id: contract3)
term6 = Term.create(number: 'Termo Aditivo N° 01', date_start: '15/12/2019', date_end: '14/12/2020', description: 'Segundo ano do contrato.', contract_id: contract3)
term7 = Term.create(number: 'Termo Aditivo N° 02', date_start: '15/12/2020', date_end: '14/12/2021', description: 'Terceiro ano do contrato.', contract_id: contract3)

term8 = Term.create(number: 'Contrato N° 14/COMAER/2020', date_start: '03/02/2020', date_end: '02/02/2021', description: 'Primeiro ano do contrato.', contract_id: contract4)
term9 = Term.create(number: 'Termo Aditivo N° 01', date_start: '03/02/2021', date_end: '02/02/2022', description: 'Segundo ano do contrato.', contract_id: contract4)

term10 = Term.create(number: '16/COMAER/2020', date_start: '25/11/2020', date_end: '24/11/2021', description: 'Primeiro ano do contrato.', contract_id: contract5)

term11 = Term.create(number: '25/SUDENE/2020', date_start: '27/11/2020', date_end: '26/11/2021', description: 'Primeiro ano do contrato.', contract_id: contract6)

term12 = Term.create(number: '03/SUDENE/2021', date_start: '10/10/2021', date_end: '09/10/2022', description: 'Primeiro ano do contrato.', contract_id: contract7)

term13 = Term.create(number: '02/ANVISA/2021', date_start: '28/01/2021', date_end: '27/01/2022', description: 'Primeiro ano do contrato.', contract_id: contract8)

term14 = Term.create(number: '19/ANVISA/2020', date_start: '01/12/2020', date_end: '30/11/2021', description: 'Primeiro ano do contrato.', contract_id: contract9)

term16 = Term.create(number: '10/COMAER/2017', date_start: '25/09/2017', date_end: '24/09/2018', description: 'Primeiro ano do contrato.', contract_id: contract10)
term17 = Term.create(number: 'Termo Aditivo N° 01', date_start: '25/09/2018', date_end: '24/09/2019', description: 'Segundo ano do contrato.', contract_id: contract10)
term18 = Term.create(number: 'Termo Aditivo N° 02', date_start: '25/09/2019', date_end: '24/09/2020', description: 'Terceiro ano do contrato.', contract_id: contract10)
term19 = Term.create(number: 'Termo Aditivo N° 03', date_start: '25/09/2020', date_end: '24/09/2021', description: 'Quarto ano do contrato.', contract_id: contract10)
term20 = Term.create(number: 'Termo Aditivo N° 04', date_start: '25/09/2021', date_end: '24/09/2022', description: 'Quinto ano do contrato. Iniciar planejamento para novo processo licitatório.', contract_id: contract10)

puts "Terms - done!!!"

puts "All seeds completed succesfully!!!"
