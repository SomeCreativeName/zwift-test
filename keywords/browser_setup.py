import os
from robot.libraries.BuiltIn import BuiltIn

_builtin = BuiltIn().get_library_instance('SeleniumLibrary')

def start_browser(url="https://zwift.com/"):
  """
  Using BROWSER environment variable (or defaults to "chrome"), starts a
  webdriver for executing Robot Framework tests.

  Keyword Arguments:
  url -- url the webdriver will open on startup (default: "https://zwift.com/")
  """
  browser = (os.getenv("BROWSER") or "chrome").lower()
  _builtin.open_browser(url, browser)
  _builtin.maximize_browser_window()

