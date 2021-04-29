from selenium import webdriver
from selenium.webdriver.common.keys import Keys
import bs4
import time
import re
import sys

driver = webdriver.Firefox(executable_path='./geckodriver')

driver.get('https://www.ted.com/talks?page=41&sort=newest&language=en')

TALK_XPATH = "//div[@id='browse-results']//div[1]//div//div//div//div//div[2]//h4[2]//a"
TRANSCRIPT_BUTTON_XPATH = "//div[@id='content']//div//div[4]//div[1]//div/a[2]"
TRANSCRIPT_SECTION_XPATH = "//div[@id='content']//div//div[4]//div[2]//section//div//div[2]//p"
NEXT_PAGE_XPATH = "//*[@id='browse-results']/div[2]/div/a[last()]"
LAUGHTER = '(Laughter)'
LAUGHTER_THRESHOLD = 3

NUM_TALKS = 100
talk_count = 0

def get_ith_talk(i):
  return f"//div[@id='browse-results']//div[1]//div[{i + 1}]//div//div//div//div[2]//h4[2]//a"

while True:
  # Get all talks on this page
  n_talk_links = len(driver.find_elements_by_xpath(TALK_XPATH))
  for i in range(n_talk_links):
    # Click link
    talk_link = driver.find_element_by_xpath(get_ith_talk(i))
    driver.get(talk_link.get_attribute('href'))

    # Look for transcript
    transcript_button = driver.find_elements_by_xpath(TRANSCRIPT_BUTTON_XPATH)

    # Click transcript if available, skip otherwise
    if len(transcript_button) > 0:
      transcript_link = transcript_button[0].get_attribute('href')
      driver.get(transcript_link)
    else:
      print('No transcript found, skipping')
      driver.back()
      continue
    
    # Get transcript sections
    sections = driver.find_elements_by_xpath(TRANSCRIPT_SECTION_XPATH)

    transcript = ''

    # Get each section and add to current transcript
    for section in sections:
      text = bs4.BeautifulSoup(section.get_attribute('innerHTML'), features="html.parser").get_text()
      text = re.sub(r"\n", r" ", text)
      transcript += text + '\n'

    # If funny, add to full transcript
    if transcript.count(LAUGHTER) >= LAUGHTER_THRESHOLD:
      with open('ted_scraped.txt', 'a') as f:
        f.write(f"NNNNN\n{transcript}")
      talk_count += 1
      print(f'[Count: {talk_count}]')
      if talk_count >= NUM_TALKS:
        break
    else:
      print('Not funny, skipping')
    driver.back()
    driver.back()
  if talk_count >= NUM_TALKS:
    break
  next_page = driver.find_element_by_xpath(NEXT_PAGE_XPATH)
  driver.get(next_page.get_attribute('href'))

driver.quit()