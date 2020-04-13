def palindrome?(sentence)
  sentence.delete(' ').upcase == sentence.delete(' ').reverse.upcase
end
