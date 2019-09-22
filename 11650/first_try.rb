def merge(left_list, right_list)
  list = []
  pair = nil
  left_index = 0
  right_index = 0

  loop do
    left_pair = left_list[left_index]
    right_pair = right_list[right_index]

    if left_pair[0].to_i < right_pair[0].to_i
      pair = left_pair
      left_index += 1
    elsif left_pair[0].to_i == right_pair[0].to_i && left_pair[1].to_i < right_pair[1].to_i
      pair = left_pair
      left_index += 1
    else
      pair = right_pair
      right_index += 1
    end

    list.append(pair)

    break if left_index >= left_list.size || right_index >= right_list.size
  end

  while left_index < left_list.size
    list.append(left_list[left_index])
    left_index += 1
  end

  while right_index < right_list.size
    list.append(right_list[right_index])
    right_index += 1
  end

  list
end

def sort(list)
  return list if list.size < 2
  mid = list.size / 2
  left_list = list[0, mid]
  right_list = list[mid, list.size]
  merge(sort(left_list), sort(right_list))
end

#------------------------------

n = gets.chomp().to_i

start = Time.now

data = Array.new(n)

n.times do |i|
  pair = gets.chomp().split(' ')
  data[i] = pair
end

result = sort(data)

result.each do |item|
  puts "#{item[0]} #{item[1]}"
end
