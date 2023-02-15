var STD_OUTPUT_HANDLE = -11;

var hConsole = GetStdHandle(STD_OUTPUT_HANDLE);
var strText = "Hello, world!";
var written = 0;

WriteConsole(hConsole, strText, strText.length, written, null);

function GetStdHandle(nStdHandle)
{
  return new ActiveXObject("kernel32.dll").GetStdHandle(nStdHandle);
}

function WriteConsole(hConsoleOutput, lpBuffer, nNumberOfCharsToWrite, lpNumberOfCharsWritten, lpReserved)
{
  return new ActiveXObject("kernel32.dll").WriteConsoleA(hConsoleOutput, lpBuffer, nNumberOfCharsToWrite, lpNumberOfCharsWritten, lpReserved);
}
