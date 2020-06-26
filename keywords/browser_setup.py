import os
from robot.libraries.BuiltIn import BuiltIn

def start_browser(url):
  browser = (os.getenv("BROWSER") or "chrome").lower()
  BuiltIn().get_library_instance('SeleniumLibrary').open_browser(url, browser)

