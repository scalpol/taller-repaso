arreglo = [1,2,3,9,1,4,5,2,3,6,6]

puts arreglo[0]

puts arreglo[-1]

arreglo.each { |n| puts n }

arreglo.each_with_index { |n, index| puts "#{index}: #{n}" }

arreglo.each_with_index { |n, index| puts n if ((index + 1) % 2).zero? }

def existe?(busc, arreglo)
  arreglo.each do |n|
    return true if busc == n
  end
  false
end
