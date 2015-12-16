class Constrinitialize
  
  #constructor method
  def initialize(x,y,z)
    @x = x
    @y = y
    @z = z
  end
  
  #instance method
  def getArea
    @area = @x + @y
    puts "area is #{@area}"
  end
  
  def setArea(x)
    @x = x
    puts "the new area is #{@area}"
  end
end

obj = Constrinitialize.new(5,10,15)
obj.getArea()

obj.setArea(100)
obj.getArea()