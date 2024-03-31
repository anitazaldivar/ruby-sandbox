integers = [1, 21, 35, 105]
integer = integers.sample

if integer%3 == 0
  if integer%5 == 0
    if integer%7 == 0
      out = "PlingPlangPlong"
    else
      out = "PlingPlang"
    end
  elsif integer%7 == 0
    out = "PlingPlong"
  else
    out = "Pling"
  end
elsif integer%5 == 0
  if integer%7 == 0
    out = "PlangPlong"
  else
    out = "Plang"
  end
elsif integer%7 == 0
  out = "Plong"
else
  out = integer
end

pp out
