numeros = [1,2,3,4,5,6,7,8]

agrupados = Array.new
numeros.each_slice(2) { |i| agrupados << i }
