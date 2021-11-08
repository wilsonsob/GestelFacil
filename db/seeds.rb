# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

puts "destroy done!!!"

User.create(full_name: 'Luanda Admin', email: 'luanda@admin.com', password: '123456', admin: true)
User.create(full_name: 'Eugenia Admin', email: 'eugenia@admin.com', password: '123456', admin: true)
User.create(full_name: 'Wilson Admin', email: 'wilson@admin.com', password: '123456', admin: true)
puts "admins (gestor de contrato): Eugenia, Luanda e Wilson - done!!!"

User.create(full_name: 'Luanda User', email: 'luanda@teste.com', password: '123456', admin: false)
User.create(full_name: 'Eugenia User', email: 'eugenia@teste.com', password: '123456', admin: false)
User.create(full_name: 'Wilson User', email: 'wilson@teste.com', password: '123456', admin: false)
puts "common profiles: Eugenia, Luanda e Wilson - done!!!"

Contract.create(number: '20/SUDENE/2019', cnpj_contractor: '09263130000191', cnpj_hired: '40432544000147', company: 'CLARO S.A.',
                object: "Contratação de empresa prestadora de Sistema Móvel Celular (SMC), na modalidade Local e
                        Longa Distância Nacional (LDN) a serem utilizados pela SUDENE na localidade de Aracaju através de 04
                        (quatro) linhas celulares, pelo período de 12 (doze) meses, podendo ser prorrogado por sucessivos períodos,
                        até o limite de 60 (sessenta) meses.")

Contract.create(number: '15/COMAER/2020', cnpj_contractor: '00394429009329', cnpj_hired: '76535764000143', company: 'OI S.A.',
                object: "Contratação de empresa prestadora de Serviço Telefônico Fixo Comutado (STFC), na modalidade Local e
                        Longa Distância Nacional (LDN) a serem utilizados pelo COMAER na localidade de Natal através de 06
                        (cinco) linhas diretas analógicas não residenciais (NRES), pelo período de 12 (doze) meses, podendo ser
                        prorrogado por sucessivos períodos, até o limite de 60 (sessenta) meses.")

Contract.create(number: '11/ANVISA/2018', cnpj_contractor: '03112386000111', cnpj_hired: '02421421000111', company: 'TIM S.A.',
                object: "Contratação de empresa prestadora de Sistema Móvel Celular (SMC), na modalidade Local e
                        Longa Distância Nacional (LDN) a serem utilizados pela ANVISA na localidade de Fortaleza através de 04
                        (quatro) linhas celulares, pelo período de 12 (doze) meses, podendo ser prorrogado por sucessivos períodos,
                        até o limite de 60 (sessenta) meses.")

Contract.create(number: '14/COMAER/2020', cnpj_contractor: '00394429009329', cnpj_hired: '71208516000174', company: 'ALGAR TELECOM S/A',
                object: "Contratação de empresa prestadora de Serviço Telefônico Fixo Comutado (STFC), na modalidade Local e
                        Longa Distância Nacional (LDN) a serem utilizados pelo COMAER na localidade de Maceió através de 05
                        (cinco) linhas diretas analógicas não residenciais (NRES), pelo período de 12 (doze) meses, podendo ser
                        prorrogado por sucessivos períodos, até o limite de 60 (sessenta) meses.")

Contract.create(number: '16/COMAER/2020', cnpj_contractor: '00394429009329', cnpj_hired: '02558157000162', company: 'TELEFÔNICA BRASIL S.A.',
                object: "Contratação de empresa prestadora de Serviço Telefônico Fixo Comutado (STFC), na modalidade Local e
                        Longa Distância Nacional (LDN) a serem utilizados pelo COMAER na localidade de São Paulo através de 10
                        (dez) linhas diretas analógicas não residenciais (NRES), pelo período de 12 (doze) meses, podendo ser
                        prorrogado por sucessivos períodos, até o limite de 60 (sessenta) meses.")

Contract.create(number: '17/COMAER/2020', cnpj_contractor: '00394429009329', cnpj_hired: '76535764000143', company: 'OI S.A.',
                object: "Contratação de empresa prestadora de Serviço Telefônico Fixo Comutado (STFC), na modalidade Local e
                        Longa Distância Nacional (LDN) a serem utilizados pelo COMAER na localidade de Natal através de 06
                        (cinco) linhas diretas analógicas não residenciais (NRES), pelo período de 12 (doze) meses, podendo ser
                        prorrogado por sucessivos períodos, até o limite de 60 (sessenta) meses.")

Contract.create(number: '25/SUDENE/2020', cnpj_contractor: '09263130000191', cnpj_hired: '76535764000143', company: 'OI S.A.',
                object: "Contratação de empresa prestadora de Serviço Telefônico Fixo Comutado (STFC), na modalidade Local e
                        Longa Distância Nacional (LDN) a serem utilizados pelo SUDENE na localidade de São Luís através de 08
                        (oito) linhas diretas analógicas não residenciais (NRES), pelo período de 12 (doze) meses, podendo ser
                        prorrogado por sucessivos períodos, até o limite de 60 (sessenta) meses.")

Contract.create(number: '03/SUDENE/2021', cnpj_contractor: '09263130000191', cnpj_hired: '02421421000111', company: 'TIM S.A.',
                object: "Contratação de empresa prestadora de Sistema Móvel Celular (SMC), na modalidade Local e
                        Longa Distância Nacional (LDN) a serem utilizados pela SUDENE na localidade de Recife através de 20
                        (quatro) linhas celulares, pelo período de 12 (doze) meses, podendo ser prorrogado por sucessivos períodos,
                        até o limite de 60 (sessenta) meses.")

Contract.create(number: '02/ANVISA/2021', cnpj_contractor: '03112386000111', cnpj_hired: '40432544000147', company: 'CLARO S.A.',
                object: "Contratação de empresa prestadora de Sistema Móvel Celular (SMC), na modalidade Local e
                        Longa Distância Nacional (LDN) a serem utilizados pela ANVISA na localidade de Curitiba através de 10
                        (dez) linhas celulares, pelo período de 12 (doze) meses, podendo ser prorrogado por sucessivos períodos,
                        até o limite de 60 (sessenta) meses.")

Contract.create(number: '19/ANVISA/2020', cnpj_contractor: '03112386000111', cnpj_hired: '76535764000143', company: 'BRASIL TELECOM S.A.',
                object: "Contratação de empresa prestadora de Serviço Telefônico Fixo Comutado (STFC), na modalidade Local e
                        Longa Distância Nacional (LDN) a serem utilizados pelo ANVISA na localidade de Brasília através de 20
                        (vinte) linhas diretas analógicas não residenciais (NRES), pelo período de 12 (doze) meses, podendo ser
                        prorrogado por sucessivos períodos, até o limite de 60 (sessenta) meses.")

Contract.create(number: '10/COMAER/2017', cnpj_contractor: '00394429009329', cnpj_hired: '02449992005638', company: 'VIVO S.A.',
                object: "Contratação de empresa prestadora de Sistema Móvel Celular (SMC), na modalidade Local e
                        Longa Distância Nacional (LDN) a serem utilizados pela COMAER na localidade de Rio de Janeiro através de 50
                        (cinquenta) linhas celulares, pelo período de 12 (doze) meses, podendo ser prorrogado por sucessivos períodos,
                        até o limite de 60 (sessenta) meses.")

puts "Contracts - done!!!"

puts "All seeds completed succesfully!!!"
