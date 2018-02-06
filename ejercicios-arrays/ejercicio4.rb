nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

nombres.select { |nombre| nombre.length > 5 }

nombres_minuscula = nombres.map { |nombre| nombre.downcase }

def cont_letras(arreglo)
  arreglo.map { |nombre| nombre.length }
end
