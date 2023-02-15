Imports System.Runtime.InteropServices

Module HelloWorld
    Sub Main()
        Dim hStdOut As IntPtr = GetStdHandle(STD_OUTPUT_HANDLE)
    Dim message As String = "Hello, world!"
        Dim writtenChars As UInteger = 0
        WriteConsole(hStdOut, message, message.Length, writtenChars, IntPtr.Zero)
    End Sub

    Private Const STD_OUTPUT_HANDLE As Integer = -11

    <DllImport("kernel32.dll", SetLastError:=True, CharSet:=CharSet.Auto)>
    Private Function GetStdHandle(ByVal nStdHandle As Integer) As IntPtr
    End Function

    <DllImport("kernel32.dll", SetLastError:=True, CharSet:=CharSet.Auto)>
    Private Function WriteConsole(ByVal hConsoleOutput As IntPtr, ByVal lpBuffer As String, ByVal nNumberOfCharsToWrite As UInteger, ByRef lpNumberOfCharsWritten As UInteger, ByVal lpReserved As IntPtr) As Boolean
    End Function
End Module
