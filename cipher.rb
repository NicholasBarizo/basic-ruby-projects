def cipher text, shift
  lowercase_start = "a".ord
  lowercase_end = "z".ord
  uppercase_start = "A".ord
  uppercase_end = "Z".ord
  text.split("").map do |letter|
    letter_code = letter.ord
    shift_code = (letter_code + shift.to_i).ord
    if letter_code >= lowercase_start && letter_code <= lowercase_end
      calculate(lowercase_start, lowercase_end, shift_code, letter_code)
    elsif letter_code >= uppercase_start && letter_code <= uppercase_end
      calculate(uppercase_start, uppercase_end, shift_code, letter_code)
    else
      letter
    end
  end
end

def calculate case_start, case_end, shift_code, letter_code
  lowercase_start = "a".ord
  lowercase_end = "z".ord
  uppercase_start = "A".ord
  uppercase_end = "Z".ord
  if shift_code >= case_start && shift_code <= case_end
    shift_code.chr
  elsif shift_code > case_end
    (shift_code - case_end + case_start - 1).chr
  elsif shift_code < case_start
    (case_end + 1 - (case_start - shift_code)).chr
  else
    "ERROR"
  end
end
lowercase_start = "a".ord
lowercase_end = "z".ord
uppercase_start = "A".ord
uppercase_end = "Z".ord
p cipher("Aa Zz", -1)