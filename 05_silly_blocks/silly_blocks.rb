
def reverser sentence
  sentence_array = sentence.split
  new_sentence = []

  sentence_array.each do |word|
    new_sentence << word.reverse
  end

  new_sentence.join(" ")
end

def adder


end



def repeater

end

puts reverser "antti on paras kaikista :DD"
