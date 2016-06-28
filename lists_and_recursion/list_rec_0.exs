defmodule MyList do
  def sum([el]), do: el
  def sum([head | tail]), do: sum([head]) + sum(tail)
end
