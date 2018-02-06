numeros = "1,2,7,1,3,5,3.4,9,1"

numeros = numeros.split(',')
numeros = numeros.map { |i| i.to_i }

def promedio(arreglo)
  promedio = arreglo.map.inject(0) { |sum, i| sum + i } / numeros.count.to_f
end

def moda(arreglo)
  max = 0
  num = 0
  cont = 0
  arreglo.each do |i|
    arreglo.each do |k|
      cont += 1 if i == k
    end
    if cont > max
      max = cont
      num = i
    end
  end
  num
end

# despues leyendo encontré una forma que me pareció mejor de hacerlo:
# def moda2(arreglo)
#   frecuencia = arreglo.inject(Hash.new(0)) { |hash, i| hash[i] += 1; hash }
#   (frecuencia.max_by { |v, i| i })[0]
# end
