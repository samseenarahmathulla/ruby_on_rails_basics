class Attraccessor 
  
  attr_accessor :name #attr_reader :name, attr_writer :name - ie. getter and setter methods. attr_accessor is used instead of these getter and setter methods

  # def name #getter method
    # @name
  # end
  
  # def name=(str) #setter method
    # @name = str
  # end
  def greeting
    puts "Hello #{@name}"
  end
  
  
  describe Hash do
    it "should return a blank instance" do
      Hash.new.should == {}
    end
  end

end
obj = Attraccessor.new
obj.name = "Dennis" 
obj.greeting # => "Hello Dennis"
