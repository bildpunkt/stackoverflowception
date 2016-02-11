try
  # add your breaking code here
catch e
  e.message += "\nhttp://stackoverflow.com/search?q=#{encodeURIComponent('[javascript] ' + e.message)}";
  throw e
