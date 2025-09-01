defmodule MainSalario do
  def main() do
    nombre = Util.input("Ingrese el nombre del empleado: ", :string)
    salario_base = Util.input("Ingrese el salario base: ", :float)
    horas_extras = Util.input("Ingrese las horas extras trabajadas: ", :integer)

    salario_total = calcular_salario_total(salario_base, horas_extras)

    Util.mostrar_mensaje(
      "El salario total de #{nombre} es de $#{salario_total}."
    )
  end

  def calcular_salario_total(salario_base, horas_extras) do
    # Suponiendo 220 horas laborales al mes
    valor_hora = salario_base / 220
    pago_horas_extras = horas_extras * valor_hora * 1.5
    salario_base + pago_horas_extras
  end
end

MainSalario.main()
