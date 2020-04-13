def find_frequency(sentence, word)
  sentence.upcase.split(" ").count(word.upcase)
end
