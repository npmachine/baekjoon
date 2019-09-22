str = gets.chomp()
n = str.split()
a = n[0].to_i
b = n[1].to_i
c = n[2].to_i
puts (a + b) % c
puts (a % c + b % c) % c
puts (a * b) % c
puts (a % c * b % c) % c
