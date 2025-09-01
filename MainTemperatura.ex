defmodule MainTemperatura do
  def main() do
    nombre = Util.input("Ingrese su nombre: ", :string)
    celsius = Util.input("Ingrese la temperatura en °C: ", :float)

    fahrenheit = convertir_fahrenheit(celsius)
    kelvin = convertir_kelvin(celsius)

    Util.mostrar_mensaje(
      "#{nombre}, la temperatura es:\n" <>
        "- #{Float.round(fahrenheit, 1)} °F\n" <>
        "- #{Float.round(kelvin, 1)} K"
    )
  end

  def convertir_fahrenheit(celsius) do
    celsius * 9 / 5 + 32
  end

  def convertir_kelvin(celsius) do
    celsius + 273.15
  end
end

MainTemperatura.main()
