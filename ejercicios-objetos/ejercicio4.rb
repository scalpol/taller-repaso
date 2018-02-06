class T
  def method1
    rand(1..10)
  end
end

class Q < T
  def initialize
    @aleatorio = method1
  end
end
