defmodule MyList do
  def span([], _, _), do: []
  def span([head | tail], from, to) when head >= from and head <= to do
    [head | span(tail, from, to)]
  end
  def span([head | tail], from, to) when head < from or head > to do
    span(tail, from, to)
  end
end
