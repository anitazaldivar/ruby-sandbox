years = [
  1700,
  1940,
  2038
]
year = years.sample

pp year
if year%4 == 0
  if year%100 == 0 #step 2
    if year%400 == 0 #step 3
      pp year.to_s + " is a leap year!" #step 4
    else
      pp year.to_s + " is not a leap year." #step 5
    end
  else
    pp year.to_s + " is a leap year!" #step 4
  end
else
  pp year.to_s + " is not a leap year." #step 5
end
