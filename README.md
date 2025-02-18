# VBScript Late Binding and Type Mismatch Errors
This example demonstrates a common issue in VBScript: runtime errors caused by late binding and type mismatches.  Late binding allows you to work with objects without explicit type declarations, but if the object or its methods don't exist or are of unexpected types, your script will fail. 

The `bug.vbs` file shows a sample script that is prone to errors if `Some.Unknown.Object` doesn't exist or doesn't support the `DoSomething` method. `bugSolution.vbs` provides a solution involving error handling and type checking.