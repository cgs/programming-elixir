defmodule StringBinary do
  def printable?(sqs) do
    Enum.all?(sqs, fn(s) -> s >= 32 and s <= 126 end)
  end
end
