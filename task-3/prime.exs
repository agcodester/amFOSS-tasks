defmodule PrimeChecker do
  # Function to check if a number is prime
  def is_prime(num) when num <= 1, do: false
  def is_prime(num) do
    Enum.all?((2..trunc(:math.sqrt(num))), fn i ->
      rem(num, i) != 0
    end)
  end

  # Main function
  def main do
    # Input from the user
    IO.write("Enter a number: ")
    n = String.trim(IO.gets(""))

    # Check if the number is prime
    case String.to_integer(n) do
      {:ok, number} ->
        if is_prime(number) do
          IO.puts("#{number} is a prime number.")
        else
          IO.puts("#{number} is not a prime number.")
        end
      _ ->
        IO.puts("Invalid input. Please enter a valid number.")
    end
  end
end

# Call the main function
PrimeChecker.main()

