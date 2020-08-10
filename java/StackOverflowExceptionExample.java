import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;

public class StackOverflowExceptionExample {
  public static void main(String[] args) {
    try {
      // breaking code:
      int i = 5 / 0;
    } catch (Exception ex) {
      String query = String.format("[java] \"%s\"", ex.getMessage());

      // since Java 10
      throw new Error("Please visit http://stackoverflow.com/search?q=" + URLEncoder.encode(query, StandardCharsets.UTF_8));

      // before Java 10
      // throw new Error("Please visit http://stackoverflow.com/search?q=" + URLEncoder.encode(query));
    }
  }
}
