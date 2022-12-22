=begin
require "selenium-webdriver"
driver = Selenium::WebDriver.for :chrome
driver.get 'http://google.com'
driver.manage.timeouts.implicit_wait = 5000
=end

#Acceder al boton Contacto
require 'Selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
driver.navigate.to "https://demoblaze.com"
driver.manage.timeouts.implicit_wait = 10000
boton_contacto = driver.find_element(:partial_link_text,"Contac")
boton_contacto.click
driver.manage.timeouts.implicit_wait = 10000
completar_email = driver.find_element(:id,"recipient-email")
completar_email.send_keys("trabajofinal@gmail.com")
completar_nombre_contacto = driver.find_element(:id,"recipient-name")
completar_nombre_contacto.click
completar_nombre_contacto.send_keys("Tester2022")
completar_mensaje = driver.find_element(:id,"message-text")
completar_mensaje.click
completar_mensaje.send_keys("Hola que tal")
boton_enviar_mensaje = driver.find_element(:xpath,"/html/body/div[1]/div/div/div[3]/button[2]")
boton_enviar_mensaje.click
sleep(300)