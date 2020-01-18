defmodule Math do
  def div(x, y) do
    {:ok, "value is #{x/y}"}
  end

  def div(_, 0) do
    {:error, "Cannot divide by zero"}
  end
end

IO.inspect Math.div(1, 0)
IO.inspect Math.div(5, 3)


# 03math.exs main program
# If we change the sequence of function and run this program with
# elixir 03amath.exs
# we get this error below (ArithmeticError)

# warning: this clause cannot match because a previous clause at line 2 always matches
# 03amath.exs:6

# ** (ArithmeticError) bad argument in arithmetic expression
#     03amath.exs:3: Math.div/2
#     03amath.exs:11: (file)
#     (elixir) lib/code.ex:813: Code.require_file/2
