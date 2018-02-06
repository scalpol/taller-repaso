a = [1,2,3]
b = [:azul, :rojo, :amarillo]
c = ["Tacos", "Quesadillas", "Hamburguesas"]

3.times do |i|
  puts "#{a[i]} :#{b[i]}, #{c[i]}"
end

3.times do |i|
  puts "#{a[i]} :#{b[-(i + 1)]}, #{c[i]}"
end

unidos = []
3.times do |i|
  unidos.push(a[i], b[i], c[i])
end
