def cipher text, shift
  shift = shift.to_i
  lowercase_start = "a".ord
  lowercase_end = "z".ord
  uppercase_start = "A".ord
  uppercase_end = "Z".ord

  while shift > 26 do
    shift %= 26
  end
  while shift < -26 do
    shift %= 26
  end
  text.split("").map do |letter|
    letter_code = letter.ord
    shift_code = (letter_code + shift).ord

    if letter_code.between?(lowercase_start, lowercase_end)
      calculate(lowercase_start, lowercase_end, shift_code, letter_code, shift)
    elsif letter_code.between?(uppercase_start, uppercase_end)
      calculate(uppercase_start, uppercase_end, shift_code, letter_code, shift)
    else
      letter
    end
  end
end

def calculate case_start, case_end, shift_code, letter_code, shift
  if shift_code.between?(case_start, case_end)
    shift_code.chr
  elsif shift_code > case_end
    (shift + case_start - 1).chr
  elsif shift_code < case_start
    (case_end - shift - 1).chr
  end
end

while true do
  puts "Input a string"
  input = gets.chomp

  puts "Input a shift"
  shift = gets.chomp

  p cipher(input, shift).join
end