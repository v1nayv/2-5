# cerner_2^5_2019

raise 'Need to pass aparameter' if ARGV.length.zero?

str_to_convert = ARGV[0]

result = str_to_convert.each_char.with_index.reduce('') do |memo, (char, index)|
  index % 2 == 0 ? memo.concat(char.upcase) : memo.concat(char.downcase)
end

puts result
