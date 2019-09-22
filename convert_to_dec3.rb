DECIMAL_NUMBERS = { 0 => '영', 1 => '일', 2 => '이', 3 => '삼', 4 => '사', 5 => '오', 6 => '육', 7 => '칠', 8 => '팔', 9 => '구' }
DECIMAL_UNITS = { 0 => '원', 1 => '십', 2 => '백', 3 => '천', 4 => '', 5 => '십', 6 => '백', 7 => '천', 8 => '', 9 => '십', 10 => '백', 11 => '천', 12 => '', 13 => '십', 14 => '백', 15 => '천' }
KOREAN_NUMBER_DELIMITER = { 4 => '만', 8 => '억', 12 => '조' }

str = gets.chomp().to_s
puts "str.length: #{str.length}"
n = str.length - 1

ret = ''
for i in n.downto(0) do
  x = n - i
  puts "i: #{i}, str[i]: #{str[i]}, 10**x: #{10**x}"
  ret = "#{DECIMAL_NUMBERS[str[i].to_i]}#{DECIMAL_UNITS[x]}#{ret}" unless str[i].to_i == 0
  puts "x: #{x} - #{KOREAN_NUMBER_DELIMITER.has_key?(x+1)} - #{KOREAN_NUMBER_DELIMITER[x+1]} - #{!str[x+1].nil?}"
  ret = "#{KOREAN_NUMBER_DELIMITER[x+1]}#{ret}" if KOREAN_NUMBER_DELIMITER.has_key?(x+1) && !str[x+1].nil?
end

puts ret
