' cscript.exe

Option Explicit

Const STD_OUTPUT_HANDLE = -11

Dim hConsole As Long, written As Long
hConsole = GetStdHandle(STD_OUTPUT_HANDLE)
WriteConsole hConsole, "Hello, world!", 13, written, ByVal 0&

Private Declare Function GetStdHandle Lib "kernel32.dll" (ByVal nStdHandle As Long) As Long
  Private Declare Function WriteConsole Lib "kernel32.dll" Alias "WriteConsoleA" (ByVal hConsoleOutput As Long, ByVal lpBuffer As String, ByVal nNumberOfCharsToWrite As Long, lpNumberOfCharsWritten As Long, lpReserved As Any) As Long
