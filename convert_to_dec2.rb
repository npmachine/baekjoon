number = gets.chomp().to_i
# puts "str.length: #{str.length}"
n = number
ret = 0
cnt = 0

# for x in n do
#   d = (number / 10**x).to_i
#   puts "x: #{x}, d: #{d}, 10**x: #{10**x}"
#   ret += d * 10**x
# end


while n > 0 do
  d = n % 10**(cnt + 1)
  n /= 10
  puts "cnt: #{cnt}, d: #{d}, n: #{n}, 10**cnt: #{10**cnt}"
  ret += d * 10**cnt
  cnt += 1
end

puts ret
