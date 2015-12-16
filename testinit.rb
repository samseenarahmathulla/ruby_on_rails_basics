class Testinit  #base class
  @@test = 10
  
  def sum(a, b)
    @a = a
    @b = b
    sum = @a + @b
    puts "Sum is #{sum}"
    puts "------------------------------"
  end
  
end


class Derivedtestinit < Testinit #derived class
  
  def putsClass
    puts "class variable is #{@@test}"
  end
  
  def new_sum
    sum = @a + @b
    puts "New SUm is #{sum}"
  end
  
  #override the method in base class
  # def sum
    # puts "Hello"
  # end
end

obj = Derivedtestinit.new()
obj.sum(3, 2)
obj.new_sum
obj.putsClass