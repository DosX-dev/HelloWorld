; MSIL

.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )
  .ver 2:0:0:0
}
.assembly extern System.Windows.Forms
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )
  .ver 2:0:0:0
}
.assembly '.'
{
}
.subsystem 0x0002
.method public static void  Main() cil managed
{
  .entrypoint
  .custom instance void [mscorlib]System.STAThreadAttribute::.ctor() = ( 01 00 00 00 ) 
  .maxstack  8
  ldstr "Hello World!"
  ldstr ""
  ldc.i4.0
  ldc.i4.s 64
  call valuetype [System.Windows.Forms]System.Windows.Forms.DialogResult [System.Windows.Forms]System.Windows.Forms.MessageBox::Show(string, string, valuetype [System.Windows.Forms]System.Windows.Forms.MessageBoxButtons, valuetype [System.Windows.Forms]System.Windows.Forms.MessageBoxIcon)
  pop
  ret
}
