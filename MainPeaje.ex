defmodule MainPeaje do
  def main() do
    placa = Util.input("Ingrese la placa del vehículo: ", :string)

    tipo =
      Util.input("Ingrese el tipo de vehículo (Carro, Moto, Camión): ", :string)
      |> String.downcase()
      |> String.trim()

    peso = Util.input("Ingrese el peso del vehículo (toneladas): ", :float)

    tarifa_final = calcular_tarifa(tipo, peso)

    Util.mostrar_mensaje("Vehiculo #{placa} (#{tipo}) debe pagar $#{trunc(tarifa_final)}.")

    {placa, tipo, tarifa_final}
  end

  def calcular_tarifa("carro", _peso), do: 10000
  def calcular_tarifa("moto", _peso), do: 5000
  def calcular_tarifa("camion", peso) when peso > 1, do: 20000 + (peso - 1) * 2000
  def calcular_tarifa("camion", _peso), do: 20000
  def calcular_tarifa(_, _), do: 0
end

MainPeaje.main()
