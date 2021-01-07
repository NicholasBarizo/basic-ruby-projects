def cipher text, shift
  lowercase_start = "a".ord
  lowercase_end = "z".ord
  uppercase_start = "A".ord
  uppercase_end = "Z".ord

  text.split("").map do |letter|
    letter_code = letter.ord
    if letter_code >= lowercase_start &&  letter_code <= lowercase_end
      (letter_code + shift.to_i).chr
    elsif letter_code >= uppercase_start && letter_code <= uppercase_end
      (letter_code + shift.to_i).chr
    else
      letter
    end
  end
end

p cipher("Abcdefg", -1)