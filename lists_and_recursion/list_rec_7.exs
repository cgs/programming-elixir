defmodule MyList do
  def span(from, to) when from == to, do: [from]
  def span(from, to) when from == to - 1, do: [from, to]
  def span(from, to), do: [from | span(from + 1, to)]

  def is_prime(x), do: (2..x |> Enum.filter(fn a -> rem(x, a) == 0 end) |> length()) == 1
  
  def get_primes(n) do
    for n <- span(2,n), is_prime(n), do: n
  end
end
