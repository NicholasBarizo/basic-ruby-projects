def cipher text, shift
  shift %= 26 until shift <= 26 && shift >= -26

  text.split('').map do |letter|
    if letter.ord.between?('a'.ord, 'z'.ord)
      calculate('a'.ord, 'z'.ord, (letter.ord + shift).ord)
    elsif letter.ord.between?('A'.ord, 'Z'.ord)
      calculate('A'.ord, 'Z'.ord, (letter.ord + shift).ord)
    else
      letter
    end
  end.join
end

def calculate(case_start, case_end, shift_code)
  return shift_code.chr if shift_code.between?(case_start, case_end)
  return (shift_code - case_end + case_start - 1).chr if shift_code > case_end
  return (case_end - (case_start - shift_code) + 1).chr if shift_code < case_start
end

def entry
  loop do
    puts 'Input a string'
    input = gets.chomp

    puts 'Input a shift'
    shift = gets.chomp

    p cipher(input, shift)
  end
end
