defmodule Util do
def mostrar_mensaje(mensaje) do
  System.cmd("java", ["-cp", ".", "Mensaje", mensaje])
  :ok
end


  def input(mensaje, :string) do
    System.cmd("java", ["-cp", ".", "Mensaje", "input", mensaje])
    |> elem(0)
    |> String.trim()
  end

  def input(mensaje, :integer) do
    try do
      mensaje
      |> input(:string)
      |> String.to_integer()
    rescue
      ArgumentError ->
        mostrar_mensaje("Error: Input is not a valid integer.")
        input(mensaje, :integer)
    end
  end

  def input(mensaje, :float) do
    try do
      mensaje
      |> input(:string)
      |> String.to_float()
    rescue
      ArgumentError ->
        mostrar_mensaje("Error: Input is not a valid float.")
        input(mensaje, :float)
    end
  end
end
