n = gets.chomp().to_i

for j in (n / 15).step(0, -1)
  puts "j: #{j}"
  offset = n - (j * 15)
  for i in (offset / 5).step(0, -1)
    
    puts "i: #{i}"
    base = offset - (i * 5)
    # base = offset - ((j * 15) + (i * 5))
    return (puts (base / 3) + i) if 0 == (base % 3)
  end
end

puts -1
