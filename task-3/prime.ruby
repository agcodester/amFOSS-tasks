def is_prime(num)
  return false if num <= 1

  (2..Math.sqrt(num)).each do |i|
    return false if num % i == 0
  end

  true # Prime number
end

# Main function
def main
  # Input from the user
  print "Enter a number: "
  n = gets.chomp.to_i

  # Check if the number is prime
  if is_prime(n)
    puts "#{n} is a prime number."
  else
    puts "#{n} is not a prime number."
  end
end
main
