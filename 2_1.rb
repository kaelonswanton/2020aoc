input_strings = File.open("day2.txt")

count = 0

input_strings.each do |input_string|
  range = input_string.split(' ')[0]
  char = input_string.split(' ')[1][0]
  value = input_string.split(' ')[2]
  min = range.split('-')[0].to_i
  max = range.split('-')[1].to_i
  char_length = value.scan(char).length

  if char_length >= min && char_length <= max
    count += 1
  end
end

puts "#{count}"
