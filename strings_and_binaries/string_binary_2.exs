defmodule StringBinary do

  def anagram?(word1, word2) when length(word1) != length(word2), do: false
  def anagram?(word1, word2), do: word1 -- word2 == []
  
end
