from bs4 import BeautifulSoup
from selenium import webdriver

chrome_options = webdriver.ChromeOptions()
chrome_options.add_argument('--headless')
chrome_options.add_argument('--no-sandbox')
chrome_options.add_argument('--disable-dev-shm-usage')


with open ("user.txt","r") as f :
    userList = f.readlines()

for userdata in userList:
    userdata = userdata.strip()

    driver = webdriver.Chrome('/usr/lib/chromium-browser/chromedriver',chrome_options=chrome_options)

    URL = "https://eospark.com/contract/%s?tab=security" % userdata
#    URL = "https://eospark.com/contract/eosadddddddd?tab=security"
    
    driver.get(URL)
    driver.implicitly_wait(5)
    
    try : 
        data = driver.find_element_by_class_name("source-code-name");
    except:
        data = ""


    if data != "" :
        print 
        print "->[!] Download it! : %s" % (URL)
    driver.close()


