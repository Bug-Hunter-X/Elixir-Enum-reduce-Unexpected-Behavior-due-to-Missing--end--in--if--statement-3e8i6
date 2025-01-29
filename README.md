# Elixir Enum.reduce Bug: Missing `end` in `if` statement

This repository demonstrates a subtle bug that can occur in Elixir when using `Enum.reduce` with an `if` statement. The issue arises from a missing `end` keyword after the `if` block which changes the logic flow and can produce unexpected results.  The code example showcases the erroneous implementation and its corresponding solution.

## Bug Description

The bug lies in the omission of an `end` for the `if` statement within the anonymous function passed to `Enum.reduce`.  This leads to the code block after the `if` always executing, regardless of the condition's truthiness.  In the example, this will result in an incorrect sum.

## Solution

The solution involves correctly adding the `end` keyword to properly terminate the `if` statement, ensuring that the `acc + x` part only executes when the condition is `false`. This restores the expected behavior.