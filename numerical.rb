class Number
  @@class_var = 10
  
  def mult(a, b)
    @prod1 = a * b
    puts "The product of #{a} and #{b} is #{@prod1}"
  end
  
  def square(a, b)
    @prod2 = a ** b
    puts "The square of #{a} and #{b} is #{@prod2}"
    puts "instance variable is #{@prod1}"
    puts "Class variable is #{@@class_var}"
  end
end

obj = Number.new
obj.mult(3, 2)
obj.square(3, 2)


class NumberInt
  def initialize(a, b) #@, @b - instance methods and are available to all methds of the class
    @a = a
    @b = b
  end
  
  def mult
    @prod = @a * @b
    puts "INIT"
    puts "The product of #{@a} and #{@b} is #{@prod}"
  end
  
  def square
    @prod = @a ** @b
    puts "The square of #{@a} and #{@b} is #{@prod}"
  end
  
  def sqrt
    @sqrt = Math.sqrt(9)
    puts @sqrt
  end
end
obj = NumberInt.new(3, 2)
obj.mult
obj.square
obj.sqrt