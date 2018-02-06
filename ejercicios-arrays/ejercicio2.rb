arreglo = [1,2,3,9,1,4,5,2,3,6,6]

arreglo.pop[-1]

arreglo.delete_at(0)

arreglo.delete_at((arreglo.count - 1) / 2)

arreglo.pop until arreglo[-1] == 1

arreglo_invertido = []
arreglo.count.times do |i|
  arreglo_invertido.push(arreglo[-(i+1)])
end
