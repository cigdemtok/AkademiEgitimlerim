#Kodlama.io sitesindeki
#-Kurs sayısını kontrol eden ( 6 olmalı )
#-"Senior" kelimesi ile arama yapıldığında çıkan sonuçta 1 kurs ve bu kursun isminin Senior Yazılım Geliştirici Yetiştirme 
# Kampı (.NET) olduğunu kontrol eden
#test caseleri geliştiriniz.
#Her test case için son çıktının ekran görüntüsü {tarih}-01 kalıbında kaydedilmelidir. 

from selenium import webdriver
from selenium.webdriver.common.by import By
from time import sleep
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.common.keys import Keys
from datetime import date

driver=webdriver.Chrome()
driver.get("https://www.kodlama.io/")
driver.maximize_window()

courses = driver.find_elements(By.XPATH,"//*[@class='course-listing-title']") 
courseNumber = len(courses)
print("Kurs sayısı="+str(courseNumber))
driver.save_screenshot(str(date.today()) + '(1).png')

search = driver.find_element(By.ID,"search-courses")
search.send_keys("senior")

title = driver.find_element(By.XPATH,'//*[@title="Senior Yazılım Geliştirici Yetiştirme Kampı (.NET)"]')
titleTest = title.text
if titleTest == "Senior Yazılım Geliştirici Yetiştirme Kampı (.NET)":
    print("Arama başarılı!😎")
else:
    print("Arama başarısız!❌")
driver.save_screenshot(str(date.today()) + '(2).png')
sleep(2)