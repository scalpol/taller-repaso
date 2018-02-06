a = [1,2,3,9,12,31, "domingo"]
b = ["lunes", "martes", "miércoles", "jueves", "viernes", "sábado", "domingo"]

concatenados = a + b

unidos = a | b

intersectados = a & b

enpares = []
a.count.times do |i|
  enpares.push([a[i], b[i]])
end

print enpares
