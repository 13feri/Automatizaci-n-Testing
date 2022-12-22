puts "Hola mundo"

require "selenium-webdriver"

driver = Selenium::WebDriver.for :chrome
driver.get("https://lista.mercadolivre.com.br/")

driver.manage.timeouts.implicit_wait = 500

driver.manage.window.maximize #Maximiza ventana

driver.manage.timeouts.implicit_wait = 500
produc=driver.find_element(name:'as_word') #seleccionar elemento
produc.send_keys('qaiaque')
produc.send_keys(:enter)

sleep(300)

