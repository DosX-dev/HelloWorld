using System;
using System.Runtime.InteropServices;

class HelloWorld
{
    [DllImport("kernel32.dll", SetLastError = true)]
    static extern IntPtr GetStdHandle(int nStdHandle);

    [DllImport("kernel32.dll", SetLastError = true)]
    static extern bool WriteConsole(IntPtr hConsoleOutput, string lpBuffer, uint nNumberOfCharsToWrite, out uint lpNumberOfCharsWritten, IntPtr lpReserved);

    static void Main()
    {
        IntPtr hConsole = GetStdHandle(-11);
        uint written;
        WriteConsole(hConsole, "Hello, World!", 13, out written, IntPtr.Zero);
    }
}
