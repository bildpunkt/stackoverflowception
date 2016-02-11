# nice version
try
  # add your breaking code here
catch
  e.message += " (http://stackoverflow.com/search?q=#{encodeURIComponent "[javascript] #{e.message}"})"
  throw e

# mean version
/*
try
  # add your breaking code here
catch
  location = "http://stackoverflow.com/search?q=#{encodeURIComponent "[javascript] #{e.message}"}"
*/
