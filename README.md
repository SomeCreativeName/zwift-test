# zwift-test
Setup

Note that this setup guide assumes you already have python3 and homebrew installed on a Mac OS.
You'll also need a new python virtual environment to keep your system python install safe.

1) Install chromedriver (chrome) and geckodriver (firefox) in your PATH if they are not already 
   there.  This can be achieved  with the commands:
     "brew cask install chromedriver"
     "brew install geckodriver"

2) In a fresh copy python run  the  following commands:
     "pip install selenium"
     "pip install robotframework"
     "pip install --upgrade robotframework-seleniumlibrary"


Running Tests
 - In the current state of this project, run the tests from the terminal in the top level 
   directory of this project.

 - You can use the BROWSER environment variable to set the test browser for the run.  If BROWSER 
   is not set, the tests will default to using chrome.

 - Currently these tests have been run with BROWSER values of "chrome", "firefox", and "safari" on 
   a Mac Catalina OS.

 - To run the tests, use the command line with "BROWSER=chrome robot --timestampoutputs -d logs/ tests/"

 - The "-d logs/" part of the command sets the location where test log files will be generated to 
   the logs/ directory.  If it does not exist, it will be created.

 - The "--timestampoutputs" part of the command places a timestamp in log file names so that they 
   do not get overwritten by subsequent runs. 

 - In the current project state, note that screenshots created will be overwritten by subsequent 
   test runs.

