require 'site_prism'

class PageCommerce < SitePrism::Page

    set_url ""

    element :console, 'img[alt="Console Playstation 4 1TB  + Controle Wireless DualShock 4 Edição Limitada Days Of Play"]'
    element :comprar, '#btn-buy'
    element :continue, '#btn-continue'
    element :btnlink, '#brd-link'
    
    def pesquisar(item)
        fill_in 'h_search-input', with: "#{item}"
        find('#h_search-input').native.send_keys(:enter)
    end

    def verificar
        find('h1.h1.page-title')
    end

    
    def checkbox
        find('#sidebar-middle > div:nth-child(2) > div > div > div > div > section:nth-child(1) > div > ul.filter-list.hidden-xs.hidden-sm > li:nth-child(2)').set true
        sleep 5
    end

    def adicionar
        console.click
        comprar.click
        continue.click
        btnlink.click
        btnlink.click 
        find('#h_minicart').click #Carrinho de Compra
    end

    def carrinho
        page.all('.crt-quantity').count
    end

    def mensagem
        find('.gqIygL')
    end

    def compras
        find('#h_minicart').click
    end

    
    def prod_vazio
        find('#crt-box')
    end
end