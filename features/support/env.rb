require 'capybara'
require 'capybara/cucumber'

Capybara.configure do |config|
    
    config.default_driver = :selenium_chrome #roda no navegador
    #config.default_driver = :selenium_chrome_headless #roda com o nageador em background
    config.run_server = false
    config.app_host   = 'https://www.americanas.com.br/'
    Capybara.page.driver.browser.manage.window.maximize
    default_max_wait_time = 10
end

