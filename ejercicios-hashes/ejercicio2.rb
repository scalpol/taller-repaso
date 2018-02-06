restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

restaurant_menu.key(restaurant_menu.values.max)

restaurant_menu.key(restaurant_menu.values.min)

promedio = restaurant_menu.inject(0) { |suma, value| suma += value[1] } / restaurant_menu.count.to_f

platos = restaurant_menu.map { |plato, costo| plato }

costo = restaurant_menu.map { |plato, costo| costo }

restaurant_menu.map { |plato, costo| restaurant_menu[plato] = costo * 1.19 }

restaurant_menu.map { |plato, costo| restaurant_menu[plato] = costo * 0.8 if plato.include?(' ') }
