arreglo = [1,2,3,9,1,4,5,2,3,6,6]

def borrar_pares(arreglo)
  nuevo = []
  arreglo.each_with_index { |n, index| nuevo << n unless ((index + 1) % 2).zero? }
  nuevo
end

def suma(arreglo)
  suma = 0
  arreglo.each { |n| suma += n }
  suma
end

def promedio(arreglo)
  suma(arreglo) / arreglo.count.to_f
end

def mas_uno(arreglo)
  arreglo.map { |n| n + 1 }
end
