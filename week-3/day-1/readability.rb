require "textstat"

def readability(text)
  index = TextStat.coleman_liau_index(text).round
  msg = "Grade #{index}"
  if index < 1
    msg = "Before Grade 1"
  elsif index >= 16
    msg = "Grade 16+"
  end
  msg
end

text1 = "Harry Potter was a highly unusual boy in many ways. For one thing, he hated the summer holidays more than any other time of year. For another, he really wanted to do his homework, but was forced to do it in secret, in the dead of the night. And he also happened to be a wizard."
text2 = "A large class of computational problems involve the determination of properties of graphs, digraphs, integers, arrays of integers, finite families of finite sets, boolean formulas and elements of other countable domains."
text3 = "When he was nearly thirteen, my brother Jem got his arm badly broken at the elbow. When it healed, and Jem's fears of never being able to play football were assuaged, he was seldom self-conscious about his injury. His left arm was somewhat shorter than his right; when he stood or walked, the back of his hand was at right angles to his body, his thumb parallel to his thigh."
text4 = "One fish. Two fish. Red fish. Blue fish."

p readability(text1)
p readability(text2)
p readability(text3)
p readability(text4)
