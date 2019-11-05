#language: pt

Funcionalidade: Realizar teste na área de vagas
    Para que eu possa ver as vagas disponiveis na empresa
    Sendo um usuário qualquer
    Posso buscar por uma vaga com vários filtros

    Contexto: Acessar a área de vagas
    Dado que acessei o site "https://www.inmetrics.com.br/"
    Quando entrar no modulo carreiras
    Entao irei acessar a pagina de vagas


    Esquema do Cenario: visualizar vagas pesquisando com filtros
    Quando pesquisar sobre vagas com os filtros <tipo_vaga> <local_trab> <area>
    Entao seleciono a <opcao> desejada para mais informacoes da <area>
    Exemplos:

        | tipo_vaga   | local_trab  | area                                         | opcao                                |
        | "Efetivo"   | "São Paulo" | "Quality Testing Services (QTS) - Automação" | "ANALISTA DE AUTOMAÇÃO DE TESTES PL" |
        | "Efetivo"   | "Barueri"   | "Operações"                                  | "PROGRAMA DE ACELERAÇÃO DE CARREIRA" | 




