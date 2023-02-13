Option Explicit

    Declare Function AllocConsole Lib "kernel32" () As Long
    Declare Function FreeConsole Lib "kernel32" () As Long
    Declare Function CloseHandle Lib "kernel32" (ByVal hObject As Long) As Long
    Declare Function GetStdHandle Lib "kernel32" (ByVal nStdHandle As Long) As Long
    Declare Function WriteConsole Lib "kernel32" Alias "WriteConsoleA" _
           (ByVal hConsoleOutput As Long, lpBuffer As Any, ByVal _
           nNumberOfCharsToWrite As Long, lpNumberOfCharsWritten As Long, _
           lpReserved As Any) As Long

Private Sub Main()
    AllocConsole
    Dim hOut As Long
    hOut = GetStdHandle(-11&)
    Dim s As String
    s = "Hello, World!"
    WriteConsole hOut, ByVal s, Len(s), vbNull, vbNull
    CloseHandle hOut
    FreeConsole
End Sub
