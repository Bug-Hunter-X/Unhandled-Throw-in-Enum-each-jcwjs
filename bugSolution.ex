```elixir
list = [1, 2, 3, 4, 5]

try do
  Enum.each(list, fn x ->
    if x == 3 do
      throw(:error)
    end
    IO.puts(x)
  end)
rescue
  :error -> IO.puts("Error encountered")
end

# or a better solution using recursion
defmodule MyEnum do
  def each([], _acc), do: :ok
  def each([head | tail], acc) do
    try do
      IO.puts(head)
      each(tail, acc)
    catch
      :error -> IO.puts("Error encountered"); :error
    end
  end
end
MyEnum.each([1, 2, 3, 4, 5], [])
```