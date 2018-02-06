personas = [{nombre: 'Pedro', pais: 'Chile', continente: 'America', genero: 'Masculino'}, {nombre: 'Javiera', pais: 'Argentina', continente: 'America', genero: 'Femenino'}, {nombre: 'Francesca', pais: 'Italia', continente: 'Europa', genero: 'femenino'}, {nombre: 'Pedro', pais: 'Venezuela', continente: 'America', genero: 'Masculino'}, {nombre: 'Jan', pais: 'Polonia', continente: 'Europa', genero: 'Masculino'}, {nombre: 'Hao', pais: 'Korea', continente: 'Asia', genero: 'Femenino'}, {nombre: 'Tanku' pais: 'Japon', continente: 'Asia', genero: 'Masculino'}, {nombre: 'Camila', pais: 'Argentina', continente: 'America', genero: 'Femenino'}, {nombre: 'Frank', pais: 'Alemania', continente: 'Europa', genero: 'Masculino'}]
#No sé que pasó con el array, alguna coma o algo me está sobrando, pero después de un rato de buscar no encontré el símbolo extra (o ausente), así que paso a hacer el ejercicio igual:

puts personas.count

continentes = []
personas.each { |persona| continentes << persona[:continente].capitalize unless continentes.include?(persona[:continente].capitalize) }

pedros = []
personas.each { |persona| pedros << persona if persona[:nombre] == 'Pedro'}

por_genero = personas.group_by { |k| k[genero] }

por_continente = Hash.new
personas.each { |persona| por_continente[:continente] << persona[:pais] }
