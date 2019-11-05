Dado("que acessei o site {string}") do |site|
    @carreira_page.go(site)
end
  
Quando("entrar no modulo carreiras") do
    @carreira_page.modulo_carreira
end
  
Entao("irei acessar a pagina de vagas") do
    @carreira_page.verifica_elementos_pagina    
end
  
Quando("pesquisar sobre vagas com os filtros {string} {string} {string}") do |tipo_vaga, local_trab, area|
    @carreira_page.pesquisar_vagas(tipo_vaga, local_trab, area)
end
  
Entao("seleciono a {string} desejada para mais informacoes da {string}") do |opcao, area|
    @carreira_page.seleciona_item_tabela(opcao, area)
end         
  