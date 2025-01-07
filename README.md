# Unhandled Throw in Enum.each

This example demonstrates an unexpected behavior when using `throw` inside an `Enum.each` loop in Elixir.  The `throw` statement will immediately terminate the entire function, not just the iteration.

The solution showcases the use of `try-catch` block for handling such exceptions in a more robust way. The `Enum.each` is replaced with a more manageable approach using recursion to keep the handling within each step of the process.
