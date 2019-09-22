n = gets.chomp().to_i

start = Time.now

data = Array.new(n)
result = Array.new(n)

n.times do |i|
  pair = gets.chomp().split(' ')
  data[i] = pair
end

data.each.with_index do |item, i|
  count = 0
  data.each do |target|
    count += 1 if target[0] > item[0] && target[1] > item[1]
  end
  result[i] = count + 1
end

puts result.join(' ')

elapsed_time = Time.now - start
puts "Elapsed time: #{Time.at(elapsed_time).utc.strftime('%L')}ms"
