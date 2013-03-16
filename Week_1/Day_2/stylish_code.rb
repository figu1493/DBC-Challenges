def fib_slow(n)
  if n == 0
    return 0
  elsif n == 1
    return 1
  else
    return fib_slow(n - 1) + fib_slow(n - 2)
  end
end 

puts fib_slow(10)
 
def fib_fast(x)
  fibonnaci_starter = [0,1]
  fibonnaci_numbers = fibonnaci_starter
  2.upto(x) do
    fibonnaci_of_x = fibonnaci_numbers[1] + fibonnaci_numbers[0]
    fibonnaci_numbers = [fibonnaci_numbers[1], fibonnaci_of_x]
  end
  return(fibonnaci_numbers[1])
end

puts fib_fast(10)
 
# # SPECS
# require 'rspec'
  
# describe "fib_slow" do
#   it "calculates the correct fibonnaci number" do
#     fib_slow(10).should eq(55)
#   end
# end
  
# describe "fib_fast" do
#   it "calculates the correct fibonnaci number" do
#     fib_fast(10).should eq(55)
#   end
# end