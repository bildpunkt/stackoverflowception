object stackoverflowception extends App {
  try {
    throw new Exception("fUCK")
  } catch {
    case e: Exception => println("https://stackoverflow.com/search?q="+ java.net.URLEncoder.encode("[scala] " + e, "utf-8"))
  }
}
