#Integrantes : Illarra, Rubiolo, Segura
require "selenium-webdriver"

driver = Selenium::WebDriver.for :chrome
driver.get("https://www.demoblaze.com/")

driver.manage.timeouts.implicit_wait = 500

driver.manage.window.maximize #Maximiza ventana

#Elegir producto y verlo en el carrito
element=driver.find_element( :link, 'Samsung galaxy s6')
driver.manage.timeouts.implicit_wait = 1000
element.click 
cartboton=driver.find_element( :link, 'Add to cart')
cartboton.click
#Boton Cart
driver.manage.timeouts.implicit_wait = 1000
buton_cart=driver.find_element(id:'cartur')
buton_cart.click

sleep(30)