import java.net.URLEncoder;

public class StackOverflowExceptionExample {
  public static void main(String[] args) {
    try {
      // breaking code:
      int i = 5 / 0;
    } catch (Exception ex) {
      throw new Error(String.format("Please visit http://stackoverflow.com/search?q=%%5Bjava%%5D%%20%s", URLEncoder.encode(ex.getMessage())));
    }
  }
}

