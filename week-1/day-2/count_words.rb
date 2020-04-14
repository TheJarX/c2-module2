def count_words(sentence)
  unique_words = {}
  arr = sentence.split(" ")
  
  arr.each do |w|
    if unique_words.key?(w)
      unique_words[w] += 1
    else
      unique_words[w] = 1
    end
  end

  return unique_words
end
