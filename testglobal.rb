class Testglobal  #base class
  @@test = 10
  
  def initialize(a, b)
    @a = a
    @b = b
  end
  
  def sum
    sum = @a + @b
    puts "Sum is #{sum}"
    puts "------------------------------"
    @instance_var = 100
  end
  
end


class Derivedtest < Testglobal #derived class
  
  def putsClass
    puts "class variable is #{@@test}"
  end
  
  def new_sum
    sum = @a + @b
    puts "New SUm is #{sum}"
  end
  
  #override the method in base class
  def sum
    puts "Hello"
    puts @instance_var #wont be shown
  end
end

obj = Derivedtest.new(3, 2)
obj.sum
obj.new_sum
obj.putsClass

# obj.Derivedtest.putsClass


