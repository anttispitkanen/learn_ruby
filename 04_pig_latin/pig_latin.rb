def translate word

  #new_word = word

  vowels = ["a","e","i","o","u","y"]
  consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","z"]
  sch = "sch"
  qu = "qu"

  sentence = word.split
  new_sentence = []

  sentence.each do |new_word|
    if new_word[0..2] == sch
      new_word = "#{new_word[3..-1]}#{sch}ay"
    elsif new_word[0..2] == "thr"
      new_word = "#{new_word[3..-1]}thray"
    elsif new_word[0..1] == qu
      new_word = "#{new_word[2..-1]}#{qu}ay"
    elsif consonants.include?(new_word[0]) && new_word[1..2] == qu
      new_word = "#{new_word[3..-1]}#{new_word[0]}quay"
    elsif vowels.include?(new_word[0])
      new_word = "#{new_word}ay"
    elsif consonants.include?(new_word[0]) && consonants.include?(new_word[1])
      new_word = "#{new_word[2..-1]}#{new_word[0..1]}ay"
    elsif consonants.include?(new_word[0])
      new_word = "#{new_word[1..-1]}#{new_word[0]}ay"
    end
    new_sentence << new_word
  end
  new_sentence.join(" ")
end

#puts translate "antti"
#puts translate "poetkoe"
#puts translate "school"
#puts translate "cherry"
#puts translate "quiet"
#puts translate "square"
puts translate "the quick brown fox"
