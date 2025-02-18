Late Binding and Type Mismatches: VBScript's late binding can lead to runtime errors if the object or method you're calling doesn't exist or is of an unexpected type.  This is particularly problematic when working with COM objects or external libraries.

Example:
```vbscript
Dim obj
Set obj = CreateObject("Some.Unknown.Object")
' ... code that might fail if Some.Unknown.Object doesn't exist
```
