personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edad = [32, 28, 41, 19]

datos = Hash.new

(personas.count).times do |i|
  datos[personas[i]] = edad[i]
end

# Lo segundo que se pide es algo extraño "Crear un método que reciba el hash y devuelva la edad del hash pasado como argumento." No estoy seguro cual es el objetivo, pero aca dejo el metodo segun lo que entiendo:

def edad?(nombre, datos)
  datos[nombre]
end
