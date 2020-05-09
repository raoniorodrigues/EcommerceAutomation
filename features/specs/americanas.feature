#language:pt


Funcionalidade: Realizar um teste E2E no teste da Submarino, buscando um item e validando ele no carrinho de compras
    Como Clinte da Submarino
    Eu quero buscar um item no site e adicionar no carrinho de compras
    Para que eu possa finalizar minha aquisição

    Contexto: Compras no Submarino
     Dado que estou no site da Submarino

    @addproduto
    Cenário: Buscar um produto para compra e adicionar ao carrinho
     Quando pesquiso pelo item "Console Playstation 4"
     E seleciono o tipo de produto console
     E verifico se a pesquisa retornou o item correto
     E adiciono ao carrinho
     Então devo verificar quantos itens meu carrinho possui

    @produtoinexistente
    Cenário: Realizar ausca por um item inexistente 
     Quando eu pesquiso pelo item inexistente "lkhadoshd"
     Então a mensagem "Ops! nenhum resultado encontrado" deverá aparecer em tela.

    @carrinhovazio
    Cenário: Validar que o carrinho está vazio
     Quando clicar no carrinho sem nenhum item adicionado
     Então a mensagem "sua cesta está vazia" deverá ser apresentada.
     
   
