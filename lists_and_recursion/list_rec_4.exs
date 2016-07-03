defmodule MyList do
  def span(from, to) when from == to, do: [from]
  def span(from, to) when from == to - 1, do: [from, to]
  def span(from, to), do: [from | span(from + 1, to)]                                     
end
