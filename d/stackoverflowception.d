import std.stdio;
import std.file;
import std.uri;

void main(string[] args) {
  try {
    // breaking code:
    read("/thisFileDoesNotExist");
  } catch (Exception e) {
    writeln("An error occurred, please visit http://stackoverflow.com/search?q=%5Bd%5D%20", encodeComponent(e.msg));
  }
}
