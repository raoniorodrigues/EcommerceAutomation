Dado("que estou no site da Submarino") do
    @page = PageCommerce.new
    @page.load
  end
  
  Quando("pesquiso pelo item {string}") do |item|
    @page = PageCommerce.new
    @page.pesquisar(item)
  end

  Quando("verifico se a pesquisa retornou o item correto") do
    lblproduto = @page.verificar
    expect(lblproduto).to have_content "console playstation 4"
  end

  Quando("seleciono o tipo de produto console") do
    @page.checkbox
  end

  
  Quando("adiciono ao carrinho") do
    @page.adicionar
  end
  
  Então("devo verificar quantos itens meu carrinho possui") do
    qnt = @page.carrinho
    puts "O carrinho possui #{qnt} item(ns)"
  end

 

#Cenário - Produto Inexistente

Quando("eu pesquiso pelo item inexistente {string}") do |prod|
    @page.pesquisar(prod)
end
  
Então("a mensagem {string} deverá aparecer em tela.") do |lblinexistente|
    expect(page).to have_content lblinexistente
end

#Cenário - Carrinho vazio

Quando("clicar no carrinho sem nenhum item adicionado") do
  @page.compras
end


Então("a mensagem {string} deverá ser apresentada.") do |vazio|
    empty = @page.prod_vazio
    expect(empty).to have_text vazio
end