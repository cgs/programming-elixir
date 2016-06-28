defmodule MyList do
  defp alpha_wrap(n) when n < 26, do: n
  defp alpha_wrap(n), do: rem(n,26)
  
  def caesar([el], n) when (el + n) <= 122, do: [el + n]
  def caesar([el], n) when (el + n) > 122, do: [(el + n) - 26]
  def caesar([head | tail], n), do: caesar([head], alpha_wrap(n)) ++ caesar(tail, alpha_wrap(n))
end
