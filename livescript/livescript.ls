# nice version
try
  # add your breaking code here
catch
  e.message += " (http://stackoverflow.com/search?q=%5Bjavascript%5D%20#{encode-URI-component e.message})"
  throw e

# mean version
/*
try
  # add your breaking code here
catch
  location = "http://stackoverflow.com/search?q=%5Bjavascript%5D%20#{encode-URI-component e.message}"
*/
