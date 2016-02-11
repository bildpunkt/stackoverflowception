Imports System.IO
Imports System.Diagnostics

Module StackOverflowception
    Sub Main()
        Try
            ' breaking code:
            File.OpenText("/DoesNotExist")
        Catch ex As Exception
            Process.Start(String.Format("http://stackoverflow.com/search?q=%5Bvb%5D%20{0}", Uri.EscapeUriString(ex.Message)))
        End Try
    End Sub
End Module

