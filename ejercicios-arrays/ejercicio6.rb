numeros = [1,2,3,0,1,2,2,1,2,1,2,0,3]
colores = [:azul, :verde, :amarillo]

numeros.each_with_index do |n, i|
  if n < 3
  numeros[i] = colores[n]
  else
  numeros[i] = nil
  end
end

print numeros
