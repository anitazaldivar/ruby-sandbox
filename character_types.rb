strings = [
  "here 12 plus 25",
  "puzzle number 04 ",
  " "
]
string = strings.sample
pp string

n_letters = string.gsub(/[^a-z]/i, "").length
n_digits = string.gsub(/[^0-9]/, "").length
n_spaces = string.gsub(/[^a-z0-9\s]/i, "").length - n_letters - n_digits

pp "Number  of letters in the string is: " + n_letters.to_s
pp "Number of spaces in the string is: " + n_spaces.to_s
pp "Number of digits in the string is: " + n_digits.to_s
