try {
    // Do stuffs here
}
catch (e) {
    e.message += " http://stackoverflow.com/search?q=${encodeURIComponent('[javascript] ' + e.message)}"
    throw new Error(e.message);
}