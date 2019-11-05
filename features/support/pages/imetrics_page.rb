#------------------------------------------------------------------------------------------------------------------------------#
#                           Classe que contém métodos e os elementos da página referente a tela Arquivo                        #
#                                                                                                                              #                                                                                                                               # 
#------------------------------------------------------------------------------------------------------------------------------#
class CarreiraPage < SitePrism::Page

    include Capybara::DSL
    include Capybara::DSL 
    include RSpec::Matchers  
    include RSpec::Expectations::Syntax
    RSpec::Expectations::Syntax.enable_expect

  
   #elementos inspecionados da tela Usuario
    element :icn_carreiras, '#linkcarreiras'
    element :btn_confira_vagas, '#carreiras > div > div > a'
    element :icn_sobre, '#menu-about'
    element :icn_vagas, '#menu-jobs'
    element :icn_conheca, '#menu-know'
    element :btn_fazer_login_candidato, 'body > div.row.header > div > div > div.header__content > div.header__content__row > a'
    element :cbx_tipo_vaga, '#filter-type'
    element :cbx_local_trabalho, '#filter-workplace' 
    element :cbx_area, '#filter-department'
    element :logo_empresa, 'body > div.row.header > div > div > div.header__logo > a > img'  
    element :talbe, 'body > div.description > div.job-list.jobs-to-filter > table'  
#--------------------------------------------------------------------------------------------------------#    
#                                    MÉTODOS                                                             #               
#--------------------------------------------------------------------------------------------------------#
    def go(site)
        visit site 
    end    

    def verifica_elementos_pagina
        icn_sobre.visible?
        icn_vagas.visible?
        icn_conheca.visible?
        btn_fazer_login_candidato.visible?
        cbx_local_trabalho.visible?
        cbx_tipo_vaga.visible?
        cbx_area.visible?
        logo_empresa.visible?
    end

    def modulo_carreira
        icn_carreiras.click
        sleep(4)
        btn_confira_vagas.click
    end
        
    def pesquisar_vagas(tipo_vaga, local_trab, area)
        icn_vagas.click
        cbx_tipo_vaga.select(tipo_vaga)
        cbx_local_trabalho.select(local_trab)
        cbx_area.select(area)        
        sleep(6)        
    end

    def seleciona_item_tabela(opcao, area)
        tab = all('table tbody tr[data-department="' + area + '"]')
        #area_trab.find('a', text: opcao).click
        
    end
end