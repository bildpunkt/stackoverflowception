import Cocoa

do {
    let badstr = try NSString(contentsOfFile: "boom-bang.bars.quux", encoding: NSUTF8StringEncoding)
}
catch let error as NSError {
    let e = error.localizedDescription as NSString
    let encodedErr = e.stringByAddingPercentEncodingWithAllowedCharacters(.URLHostAllowedCharacterSet())
    if let encodedErr = encodedErr, url = NSURL(string: "http://stackoverflow.com/search?q=[swift]%20\(encodedErr)") {
        NSWorkspace.sharedWorkspace().openURL(url)
    }
}
