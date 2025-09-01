defmodule MainCombustible do
  def main() do
    nombre_conductor = Util.input("Ingrese el nombre del conductor: ", :string)
    distancia_recorrida = Util.input("Ingrese la distancia recorrida en kilómetros: ", :float)
    combustible_consumido = Util.input("Ingrese la cantidad de combustible consumido en litros: ", :float)

    rendimiento = calcular_rendimiento(distancia_recorrida, combustible_consumido)

    Util.mostrar_mensaje(
      "El conductor #{nombre_conductor} recorrió #{Float.round(distancia_recorrida, 2)} km " <>
      "con #{Float.round(combustible_consumido, 2)} litros, " <>
      "obteniendo un rendimiento de #{Float.round(rendimiento, 2)} km/L."
    )
  end

  def calcular_rendimiento(distancia, litros) do
    distancia / litros
  end
end

MainCombustible.main()
