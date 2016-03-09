package main

import (
  "runtime"
  "fmt"
  "os/exec"
  "net/url"
)

func main() {
  defer func() {
    if r := recover(); r != nil {
      var err string
      switch r.(type) {
      case string:
        err = r.(string)
        break
      case error:
        err = r.(error).Error()
      default:
        err = fmt.Sprintf("%v", err)
      }

      url := fmt.Sprintf("http://stackoverflow.com/search?q=[go]%%20%s", url.QueryEscape(err))

      var cmd *exec.Cmd
      switch runtime.GOOS {
      case "windows":
        cmd = exec.Command("cmd", "/c", "start", url)
        break
      case "darwin":
        cmd = exec.Command("open", url)
        break
      default:
        cmd = exec.Command("xdg-open", url)
        break
      }

      cmd.Start()
    }
  }()

  // naughty code here
}
