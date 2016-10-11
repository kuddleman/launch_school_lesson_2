#Make a mortgage calculator to determine the monthly payment of a loan.
#Greet the User.
#Ask for the loan amount to the nearest dollar (p)
#Ask for the annual percentage rate(APR). (apr/12 = j)
#Ask for the loan duration in months. (n)
#Plug it all into the formula. 
#Print out the monthly payment (m)     

puts "Hi, What is your name?"

name = Kernel.gets().chomp()

puts "Hi #{name}. Let me get some information."
puts "What is the loan amount to the nearest dollar?"
p = Kernel.gets().chomp().to_i

puts "Great, #{name}. Now what is the annual percentage rate?"
apr = Kernel.gets().chomp().to_f

j = apr/12.to_f

puts "Ok. Last question: What is the duration of the loan in months?"
n = Kernel.gets().chomp.to_i

m = p * (j / (1 - (1 + j)**-n))

puts "Cool! And the answer is: For a loan of #{p} "\
"with an annual percentage rate of #{apr} and a loan duration of #{n},"\
"your monthly payment will be #{m}."