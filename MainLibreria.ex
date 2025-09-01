defmodule MainLibreria do
  def main() do
    titulo_libro = Util.input("Ingrese el título del libro: ", :string)
    cantidad_unidades = Util.input("Ingrese la cantidad de unidades disponibles: ", :integer)
    precio_unitario = Util.input("Ingrese el precio unitario: ", :float)
    valor_total = calcular_valor_total(cantidad_unidades, precio_unitario)

    Util.mostrar_mensaje(
      "El libro \"#{titulo_libro}\" tiene #{cantidad_unidades} unidades, con un valor total de $#{Float.round(valor_total, 2)}."
    )
  end

  def calcular_valor_total(cantidad_unidades, precio_unitario) do
    cantidad_unidades * precio_unitario
  end
end

MainLibreria.main()
