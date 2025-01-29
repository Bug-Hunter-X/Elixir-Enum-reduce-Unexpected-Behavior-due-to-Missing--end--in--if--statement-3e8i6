```elixir
list = [1, 2, 3, 4, 5]

Enum.reduce(list, 0, fn x, acc ->
  if x == 3 do
    throw(:error)  #Using throw to stop the reduction prematurely
  else
    acc + x
  end
  #missing end for the if statement
  #This will lead to an unexpected behavior
  # as it will be treated as an else
  #and the acc + x will be executed even if x == 3
  #leading to wrong sum result
  #and potential unexpected behavior later in the code.
 end)
```