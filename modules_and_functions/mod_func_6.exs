defmodule Chop do
  def mid_of_range(l..h), do: div((h - l), 2) + l
  def upper_range(l..h), do: mid_of_range(l..h)..h
  def lower_range(l..h), do: l..mid_of_range(l..h)
  
  def do_guess(g, a, l..h) when g > a do
    IO.puts "Is it #{g}"
    do_guess(mid_of_range(lower_range(l..h)), a, lower_range(l..h))
  end

  def do_guess(g, a, l..h) when g < a do
    IO.puts "Is it #{g}"
    do_guess(mid_of_range(upper_range(l..h)), a, upper_range(l..h))
  end

  def do_guess(g, _, _) do
    IO.puts "Is it #{g}"
    IO.puts g
  end
  
  def guess(answer, l..h) do
    do_guess(mid_of_range(l..h), answer, l..h)
  end
end

# Chop.guess(273, 1..1000)
