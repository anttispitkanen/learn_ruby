def echo message
  message
end

def shout message
  message.upcase
end

def repeat message, times=2
  message + " #{message}" * (times-1)
end
#puts repeat "Poetkoe", 5

def start_of_word word, num_letters
  word[0...num_letters]
end
#puts start_of_word "Poetkoe", 2

def first_word text
  text.split[0]
end
#puts first_word "Poetkoe on tosi paras :D"

def titleize text
  new_text = text.split
  small_words = ["over", "the", "and", "of", "for", "from"]

  output = new_text[0].capitalize

  i = 1
  while i < new_text.length do
    #word = new_text[i]
    #word.capitalize #unless small_words.include?(word)
    #new_text[i].capitalize unless small_words.include?(new_text[i])
    if small_words.include?(new_text[i])
      output += " #{new_text[i]}"
    else
      output += " #{new_text[i].capitalize}"
    end
    i+=1
  end

  return output
end
puts titleize "the bridge over the river kwai"
