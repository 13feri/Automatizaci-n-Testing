#Integrantes : Illarra, Rubiolo, Segura
require "selenium-webdriver"

driver = Selenium::WebDriver.for :chrome
driver.get("https://www.demoblaze.com/")

driver.manage.timeouts.implicit_wait = 500

driver.manage.window.maximize #Maximiza ventana

#Boton About us y reproducir video
driver.manage.timeouts.implicit_wait = 500
boton_about_us = driver.find_element(:xpath,"/html/body/nav/div[1]/ul/li[3]/a")
boton_about_us.click
driver.manage.timeouts.implicit_wait = 500
reproducir = driver.find_element(:xpath,'//*[@id="example-video"]/button')
reproducir.click

sleep(30)