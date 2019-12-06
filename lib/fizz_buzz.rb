def fizz_buzz(number)
  if number % 15 == 0 then "Fizz Buzz"
  elsif number % 3 == 0 then "Fizz"
  elsif number % 5 == 0 then "Buzz"
  else number.to_s
  end
end
