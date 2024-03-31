inputs = [
  ["9", "5", "4"],
  ["20", "40", "60"],
  ["1", "3", "19"]
]
numbers = inputs.sample
pp numbers

integers = []
numbers.each do |number|
  if number.to_i.odd?
      integers = integers.push(number.to_i)
  end
end

pp integers.sum
