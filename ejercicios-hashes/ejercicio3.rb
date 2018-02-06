inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}

def menu
  opciones = ['¿Que desea hacer?', '(1) agregar producto', '(2) ver stock total', '(3) ver item con mayor stock', '(4) ver si producto existe en el inventario', '(5) salir']
  opciones.each { |opcion| puts opcion }
  gets.chomp.to_i
end

def ingresar(nuevo, inventario)
  producto = nuevo.split(' ')
  inventario[producto[0].capitalize.to_sym] = producto[1].to_i
  return inventario
end

def stocktotal(inventario)
  total = inventario.inject(0) { |suma, (_, stock)| suma += stock }
end

def mayorstock(inventario)
  inventario.key(inventario.values.max)
end

def existencias(producto, inventario)
  if inventario.key?(producto.to_sym)
    puts 'Si.'
  else
    puts 'No.'
  end
end

loop do
  case menu
  when 1
    puts '¿Que desea ingresar? (ej: notebooks 3)'
    inventario = ingresar(gets.chomp, inventario)
    puts '-------------- agregado ----------------'
  when 2
    puts "Hay un stock total de #{stocktotal(inventario)}."
    puts '----------------------------------------'
  when 3
    puts "El producto con más stock es #{mayorstock(inventario)}."
    puts '----------------------------------------'
  when 4
    puts '¿Que producto desea saber si está en existencias? (ej: notebooks)'
    existencias(gets.capitalize.chomp, inventario)
      puts '----------------------------------------'
  when 5
    break
  else
    puts 'Opcion invalida.'
  end
end
