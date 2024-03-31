require "pry-byebug"

unpredictable_inputs = [
  "Hello!",
  Time.now,
  rand(100),
  :GOODBYE,
  nil,
  true,
  false,
  { :city => "Chicago", :state => "IL", :zip => 60654 }
]

some_random_input = unpredictable_inputs.sample

pp some_random_input

if some_random_input.class == String || some_random_input.class == Symbol
  # downcase it and print it
  pp some_random_input.downcase

elsif some_random_input.class == Time
  #figure out the day of the week, downcased, and print
  week_day = some_random_input.strftime("%A")
  pp week_day.downcase

elsif some_random_input.class == Integer
  #figure out whether it’s odd or even and print (where X is the number): "X is odd" or "X is even"
  if some_random_input.even?
    pp some_random_input.to_s + " is even"
  elsif some_random_input.odd?
    pp some_random_input.to_s + " is odd"
  end

elsif some_random_input.class == NilClass
  #print "no object provided"
  pp "no object provided"

elsif some_random_input.class == TrueClass
  # print "you may pass"
  pp "you may pass"

elsif some_random_input.class == FalseClass
  # print "you may not pass"
  pp "you may not pass"

elsif some_random_input.class == Hash
  #print the list of keys within the Hash, as an Array.
  pp some_random_input.keys
end
