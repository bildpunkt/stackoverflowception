#include <iostream>
#include <cctype>
#include <iomanip>
#include <sstream>
#include <string>

// compile with -std=c++11

using namespace std;

string url_encode(const string &value) {
    ostringstream escaped;
    escaped.fill('0');
    escaped << hex;

    for (string::const_iterator i = value.begin(), n = value.end(); i != n; ++i) {
        string::value_type c = (*i);

        // Keep alphanumeric and other accepted characters intact
        if (isalnum(c) || c == '-' || c == '_' || c == '.' || c == '~') {
            escaped << c;
            continue;
        }

        // Any other characters are percent-encoded
        escaped << uppercase;
        escaped << '%' << setw(2) << int((unsigned char) c);
        escaped << nouppercase;
    }

    return escaped.str();
}

int main(){
  try {
    throw 1337;
  } catch (int e) {
    cout << "https://stackoverflow.com/search?q=" << url_encode("[c++] "+to_string(e)) << endl;
  }
  return 0;
}
