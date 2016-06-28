defmodule MyList do
  def max([a]), do: a
  def max([a, b]) when (a == b or a > b), do: a
  def max([a, b]) when b > a, do: b
  def max([a, b | tail]), do: max(max([a, b]), max(tail))
end
