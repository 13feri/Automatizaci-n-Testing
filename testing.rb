require "selenium-webdriver"

driver = Selenium::WebDriver.for :chrome
driver.get("https://www.demoblaze.com/")

driver.manage.timeouts.implicit_wait = 50000

driver.manage.window.maximize #Maximiza ventana



#Crear Usuario
driver.manage.timeouts.implicit_wait = 500
boton_registrar=driver.find_element(id:'signin2')
boton_registrar.click
user=driver.find_element(id:'sign-username') #seleccionar elemento
user.send_keys('testing225')
user=driver.find_element(id:'sign-password') #seleccionar elemento
user.send_keys('123456')
driver.manage.timeouts.implicit_wait = 500
boton_sign = driver.find_element(xpath: '//*[@id="signInModal"]/div/div/div[3]/button[2]')
boton_sign.click
driver.manage.timeouts.implicit_wait = 500

#Iniciar Sesión
driver.manage.timeouts.implicit_wait = 500
boton_iniciarsesion=driver.find_element(id:'login2')
boton_iniciarsesion.click
userlogin=driver.find_element(id:'loginusername') #seleccionar elemento
userlogin.send_keys('testing225')
passwordlogin=driver.find_element(id:'loginpassword') #seleccionar elemento
passwordlogin.send_keys('123456')
driver.manage.timeouts.implicit_wait = 500
boton_log = driver.find_element(xpath: '//*[@id="logInModal"]/div/div/div[3]/button[2]')
boton_log.click



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

#Cerrar Sesion
driver.manage.timeouts.implicit_wait = 500
boton_cerrarsesion=driver.find_element(id:'logout2')
boton_cerrarsesion.click
driver.manage.timeouts.implicit_wait = 500


#Boton About us y reproducir video
driver.manage.timeouts.implicit_wait = 10000
boton_about_us = driver.find_element(:xpath,"/html/body/nav/div[1]/ul/li[3]/a")
boton_about_us.click
driver.manage.timeouts.implicit_wait = 500
reproducir = driver.find_element(:xpath,'//*[@id="example-video"]/button')
reproducir.click

#Acceder al boton Contacto y enviar mensaje
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


sleep(100)