// nice version
try {
  // add your breaking code here
} catch(e) {
  e.message += ' (http://stackoverflow.com/search?q=' + encodeURIComponent('[javascript] ' + e.message) + ')';
  throw e;
}

// mean version
/*
try {
  // add your breaking code here
} catch(e) {
  location = 'http://stackoverflow.com/search?q=' + encodeURIComponent('[javascript] ' + e.message);
}
*/
