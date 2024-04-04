sentences = [
  "the dog, the cat, the zebra, the giraffe",
  "the, the code, and the developer",
  "then the- their"
]
sentence = sentences.sample
# write your program below
sentence = sentence.gsub(/[^a-z0-9\s]/i, "")

number = sentence.split.length - sentence.gsub("the", "").split.length
pp  "'the' appeared #{number} times"
