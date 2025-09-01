defmodule MainEnvio do
  def main() do
    cliente = Util.input("Ingrese el nombre del cliente: ", :string)
    peso = Util.input("Ingrese el peso del paquete en kg: ", :float)
    tipo_envio = Util.input("Ingrese el tipo de envío (Económico, Express, Internacional): ", :string)

    costo_total = calcular_costo(peso, tipo_envio)

    Util.mostrar_mensaje(
      "El cliente #{cliente} debe pagar $#{costo_total} por un envio de #{peso} kg (#{tipo_envio})."
    )

    {cliente, peso, tipo_envio, costo_total}
  end

  def calcular_costo(peso, "Económico"), do: peso * 5000
  def calcular_costo(peso, "Express"), do: peso * 8000

  def calcular_costo(peso, "Internacional") do
    cond do
      peso <= 5 -> peso * 15000
      peso > 5 -> peso * 12000
    end
  end

  def calcular_costo(_, _), do: 0   # Si escriben mal el tipo de envío
end

MainEnvio.main()
