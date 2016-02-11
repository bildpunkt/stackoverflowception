try
  # add your breaking code here
catch e
  e.message += "\nhttp://stackoverflow.com/search?q=#{encodeURIComponent '[javascript] ' + e.message}\n";
  throw e

###
wow!

open = require 'open'
try
  # add your breaking code here
catch e
  open "\nhttp://stackoverflow.com/search?q=[coffeescript] #{encodeURIComponent e.message}\n"
  throw e
###
