secret = [
  "3 h1v2 1 s2cr2t t4 sh1r2",
  "3s th3s s2c5r2 2n45gh f4r my P1SSW4RD?",
  "w2 sh45ld b2 m4r2 cl2v2r"
].sample
pp secret

decoder = { "a" => 1, "e" => 2, "i" => 3, "o" => 4, "u" => 5}

decripted_word = []

secret.split("").each do |character|
  if decoder.values.include?(character.to_i)
    decripted_character = decoder.key(character.to_i)
  else
    decripted_character = character
  end
  decripted_word = decripted_word.push(decripted_character)
end

pp decripted_word.join
