defmodule Math do
  def div(_, 0) do
    {:error, "Cannot divide by zero"}
  end
end

IO.inspect Math.div(5, 3)

# 03math.exs main program
# If we delete def div(x, y) function and run this program with IO.inspect Math.div(5, 3) arguments
# elixir 03bmath.exs
# we get this error below (FunctionClauseError)

# ** (FunctionClauseError) no function clause matching in Math.div/2

# The following arguments were given to Math.div/2:

# # 1
# 5

# # 2
# 3

# 03bmath.exs:2: Math.div/2
# 03bmath.exs:7: (file)
# (elixir) lib/code.ex:813: Code.require_file/2
