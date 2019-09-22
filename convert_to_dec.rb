str = gets.chomp().to_s
puts "str.length: #{str.length}"
n = str.length - 1
ret = 0

for i in n.downto(0) do
  x = n - i
  puts "i: #{i}, str[i]: #{str[i]}, 10**x: #{10**x}"
  ret += str[i].to_i * 10**x
end

puts ret
