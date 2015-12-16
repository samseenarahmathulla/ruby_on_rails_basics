class Testrspec
  @@class_var = 10
  
  def mult(a, b)
    @prod1 = a * b
    # puts "The product of #{a} and #{b} is #{@prod1}"
    return @prod1
  end
  
  def square(a, b)
    @prod2 = a ** b
    # puts "The square of #{a} and #{b} is #{@prod2}"
    # puts "instance variable is #{@prod1}"
    # puts "Class variable is #{@@class_var}"
  end
   
end

# obj = Testrspec.new
# obj.mult(3, 2)
# obj.square(3, 2)


#Refer https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/type-matchers
describe "Product" do
  before do
    @obj = Testrspec.new
    @product = @obj.mult(3, 2)
    @squared = @obj.square(3, 2)
  end

  it "should give the product as an integer" do
    expect(@product).to be_a_kind_of(Integer)
  end
  
  it "should get the squared product as an integer" do
    expect(@squared).to be_a_kind_of(Integer)
  end
  
  #negative passing case
  it "product should not be a string" do
    expect(@product).not_to be_kind_of(String)
  end
end
 