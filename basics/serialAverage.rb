# Your code here
def serial_average(string)
  serial_number = string[0,3]
  first_decimal = string[4,5].to_f
  second_decimal = string[10,5].to_f
  average = (first_decimal + second_decimal) / 2
  rounded_average = average.round(2).to_s
 return "#{serial_number}-#{rounded_average}"
end