def substrings input, words
  matches = {}
  input.split.each do |input_word|
    words.each do |dict_word|
      if input_word.downcase.include?(dict_word)
        unless matches[dict_word.to_sym]
          matches[dict_word.to_sym] = 1
        else
          matches[dict_word.to_sym] += 1
        end
      end
    end
  end
  matches.each do |word, count|
    puts "#{word}: #{count} times"
  end
end

words = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy, how down it go i own it part below", words)