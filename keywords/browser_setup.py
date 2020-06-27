import os
from robot.libraries.BuiltIn import BuiltIn

_builtin = BuiltIn().get_library_instance('SeleniumLibrary')

def start_browser(url):
  browser = (os.getenv("BROWSER") or "chrome").lower()
  _builtin.open_browser(url, browser)
  _builtin.maximize_browser_window()
