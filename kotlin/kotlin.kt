import java.net.URLEncoder
import java.nio.charset.StandardCharsets

fun main() {
    try {
        // breaking code:
        val i = 5 / 0
    } catch (ex: Exception) {
        val query = """[java] "${ex.message}""""

        throw Error("Please visit http://stackoverflow.com/search?q=" + URLEncoder.encode(query, StandardCharsets.UTF_8))
    }
}
