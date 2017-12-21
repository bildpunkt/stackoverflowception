try {
    // Do stuffs here
}
catch (e) {
    e.message += " http://stackoverflow.com/search?q=${encodeURIComponent('[typescript] ' + e.message)}"
    throw new Error(e.message);
}
