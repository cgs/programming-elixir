defmodule MyList do
  def all?([el], func), do: func.(el)
  def all?([h | t], func), do: func.(h) && all?(t, func)

  def each([el], func), do: func.(el)
  def each([h | t], func) do
    func.(h)
    each(t, func)
  end

  def filter([el], func) do
    if func.(el) do
      [el]
    else
      []
    end
  end
  def filter([h | t], func) do
    if func.(h) do
      [ h | filter(t, func) ]
    else
      filter(t, func)
    end
  end

  # split
  def split(list, count) when (count == 0), do: { [], list }
  def split(list, count) when (count < 0) and (count * -1 >= length(list)), do: { [], list }
  def split(list, count) when (count > 0) and (count >= length(list)), do: { list, [] }
  def split(list, count) when count < 0, do: split(list, length(list) + count)
  def split(list, count), do: { first_part(list, count), last_part(list, count) }

  defp first_part([h | _t], count) when count == 1, do: [h]
  defp first_part([h | t], count), do: [ h | first_part(t, count - 1) ]
  
  defp last_part([_h | t], count) when count == 1, do: t
  defp last_part([_h | t], count), do: last_part(t, count - 1)

  # take
  def take(_list, count) when count == 0, do: []
  def take(list, count) when count >= length(list), do: list
  def take(list, count) when (count < 0) and (count * -1 >= length(list)), do: list
  def take(list, count) when count < 0, do: take_r(list, count * -1)

  def take([h | _t], count) when count == 1, do: [h]
  def take([h | t], count), do: [ h | take(t, count - 1) ]

  defp take_r([_h | t], count) when length(t) == count, do: t
  defp take_r([_h | t], count), do: take_r(t, count)
end
