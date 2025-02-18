Improved Error Handling and Type Checking:

To mitigate these errors:

1. **Error Handling:** Use `On Error Resume Next` and `Err` object to handle potential errors gracefully.
2. **Type Checking:** Before using an object, check its existence and whether it supports the methods or properties you intend to use.

Example using error handling and type checking:
```vbscript
On Error Resume Next

Dim obj
Set obj = CreateObject("Some.Unknown.Object")

If Err.Number <> 0 Then
  MsgBox "Error creating object: " & Err.Description
  Err.Clear
  Exit Sub
End If

If TypeName(obj) = "Some.Unknown.Object" Then
  If TypeName(obj.DoSomething) = "Sub" Then 
    obj.DoSomething
  Else
    MsgBox "Object doesn't support DoSomething method."
  End If
Else
  MsgBox "Object type mismatch."
End If

On Error GoTo 0
```
This revised script checks if the object creation succeeds and if the object supports the `DoSomething` method before attempting to call it.