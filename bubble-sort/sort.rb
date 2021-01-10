def sort numbers
  sorted_count = 1
  until sorted_count == 0 do 
    sorted_count = 0
    for i in 0..numbers.length - 2
      if numbers[i] > numbers[i + 1]
        numbers[i], numbers[i + 1] = numbers[i + 1], numbers[i]
        sorted_count += 1
      else
      end
    end
  end
  numbers
end

numbers = [3, 1, 7, 2, 4, 6, 9, 8, 0, 5, 10, 2, 9, 3, 6, 4, 8, 6, 4]
p sort(numbers)