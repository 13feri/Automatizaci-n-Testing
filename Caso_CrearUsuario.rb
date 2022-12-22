#Integrantes : Illarra, Rubiolo, Segura
require "selenium-webdriver"

driver = Selenium::WebDriver.for :chrome
driver.get("https://www.demoblaze.com/")

driver.manage.timeouts.implicit_wait = 500

driver.manage.window.maximize #Maximiza ventana



#Crear Usuario
driver.manage.timeouts.implicit_wait = 500
boton_registrar=driver.find_element(id:'signin2')
boton_registrar.click
user=driver.find_element(id:'sign-username') #seleccionar elemento
user.send_keys('testing227') 
user=driver.find_element(id:'sign-password') #seleccionar elemento
user.send_keys('123456')
driver.manage.timeouts.implicit_wait = 500
boton_sign = driver.find_element(xpath: '//*[@id="signInModal"]/div/div/div[3]/button[2]')
boton_sign.click
sleep(30)