hash = {"x": 1, "y": 2}

hash[:z] = 3

hash[:x] = 5

hash.delete(:y)

puts 'yeaah' if hash.include?(:z)

hash.clone.each do |key, value|
  hash[value] = key.to_s
  hash.delete(key)
end
