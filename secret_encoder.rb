require "pry-byebug"

secret = [
  "I have a secret to share",
  "Is this secure enough for my PASSWORD?",
  "we should be more clever"
].sample

pp secret

encoder = { "a" => 1, "e" => 2, "i" => 3, "o" => 4, "u" => 5}


encripted_word = []

secret.split("").each do |character|
  if encoder.keys.include?(character.downcase)
    encripted_character = encoder.fetch(character.downcase)
  else
    encripted_character = character
  end
  encripted_word = encripted_word.push(encripted_character)
end

pp encripted_word.join
