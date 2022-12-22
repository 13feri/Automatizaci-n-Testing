#Integrantes : Illarra, Rubiolo, Segura
require "selenium-webdriver"

driver = Selenium::WebDriver.for :chrome
driver.get("https://www.demoblaze.com/")

driver.manage.timeouts.implicit_wait = 500

driver.manage.window.maximize #Maximiza ventana

#este caso debe probarse despues de tener usuario creado

#Iniciar Sesión
driver.manage.timeouts.implicit_wait = 500
boton_iniciarsesion=driver.find_element(id:'login2')
boton_iniciarsesion.click
userlogin=driver.find_element(id:'loginusername') #seleccionar elemento
userlogin.send_keys('testing227')
passwordlogin=driver.find_element(id:'loginpassword') #seleccionar elemento
passwordlogin.send_keys('123456')
driver.manage.timeouts.implicit_wait = 500
boton_log = driver.find_element(xpath: '//*[@id="logInModal"]/div/div/div[3]/button[2]')
boton_log.click

sleep(30)