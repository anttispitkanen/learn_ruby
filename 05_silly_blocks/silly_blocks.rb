
def reverser
  original = yield.split
  new_sentence = []
  original.each { |word| new_sentence << word.reverse }
  new_sentence.join(" ")
end

#puts reverser {"Poetkoe on paras"}


def adder (num=1)
  added = yield + num
end


def repeater (num=1)
  num.times {yield}

end
