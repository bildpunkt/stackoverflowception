(import java.net.URLEncoder)

(try
  (/ 1 0)
(catch Exception e
  (->> e
    .getMessage
    URLEncoder/encode
    (format "Please visit http://stackoverflow.com/search?q=%%5Bclojure%%5D%%20%s")
    Error.
    throw)))
