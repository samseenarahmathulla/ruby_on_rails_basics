class Vehicle
  def wheels(x)
    puts "No of wheels is #{x}"    
  end
  
  def samecar(x,y)
    (x==y) ? (puts "same car") : (puts "different car")
  end
  
  def enter_val
    puts "Enter a value :"
    val = gets
    puts "entered value is #{val}"
    get_product
  end
  
  def get_product
    @a = [1,2,3]
    @b = @a.collect{|x| x*10}
    puts @b
  end
  
  def sym_vs_str
    puts "hello world".object_id #each string takes a diff place in memory - mutable - can be changed
    puts "hello world".object_id
    puts "hello world".object_id
    puts "hello world".object_id
    puts "hello world".object_id
    
    puts "------------------------------"
    puts :hello_world.object_id #symbol has same place in memory, symbols are immutable - cannot be changed and can only be overwritten
    puts :hello_world.object_id
    puts :hello_world.object_id
  end
  
end

obj = Vehicle.new
obj.wheels(5)
obj.samecar("twsif","swift")
# obj.enter_val
obj.sym_vs_str

