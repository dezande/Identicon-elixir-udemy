defmodule Identicon do
  @spec main(binary) :: Identicon.Image.t()
  def main(input) do
    input
    |> hash_input
  end

  @spec hash_input(binary) :: Identicon.Image.t()
  def hash_input(input) do
    hex = :crypto.hash(:md5, input)
    |> :binary.bin_to_list

    %Identicon.Image{hex: hex}
  end
end
