# Igual me parecería más lógico hacerlo con variables de instancia o.o

class Car
  @@t_instances = 0
  @@q_instances = 0
  def self.t_instances
    puts @@t_instances
  end

  def self.q_instances
    puts @@q_instances
  end
end

class T < Car
  def initialize
    @@t_instances += 1
  end
end

class Q < Car
  def initialize
    @@q_instances += 1
  end
end

30.times { T.new }
Car.t_instances

25.times { Q.new }
Car.q_instances
