defmodule Identicon do
  @spec main(binary) :: [byte]
  def main(input) do
    input
    |> hash_input
  end

  @spec hash_input(binary) :: [byte]
  def hash_input(input) do
    :crypto.hash(:md5, input)
    |> :binary.bin_to_list
  end
end
