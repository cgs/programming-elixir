defmodule MyList do
  def mapsum([el], func), do: func.(el)
  def mapsum([head | tail], func), do: func.(head) + mapsum(tail, func)
end
