defmodule MyList do
  def flatten([]), do: []
  def flatten([el]) when not is_list(el), do: [el]
  def flatten([h | t]) when not is_list(h), do: [h] ++ flatten(t)
  def flatten([h | t]), do: flatten(h) ++ flatten(t)
end
