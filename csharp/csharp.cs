using System;
using System.Diagnostics;

class Program
{
    public static void Main(string[] args)
    {
        try
        {
            // breaking code:
            var x = 0;
            Console.WriteLine(5 / x);
        }
        catch (Exception ex)
        {
            Process.Start(string.Format("http://stackoverflow.com/search?q=%5Bc%23%5D%20{0}", Uri.EscapeUriString(ex.Message)));
        }
    }
}
