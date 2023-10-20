input_strings = File.open("day2.txt")
count = 0

input_strings.each do |input_string|
  range = input_string.split(' ')[0]
  char = input_string.split(' ')[1][0]
  string = input_string.split(' ')[2]
  first_num = range.split('-')[0].to_i
  second_num = range.split('-')[1].to_i

  updated_first_num = first_num -= 1
  updated_second_num = second_num -= 1

  if (string[updated_first_num] == char) ^ (string[updated_second_num] == char)
    count += 1
  end
end
puts "#{count}"
