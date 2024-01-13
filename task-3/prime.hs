import System.IO

-- Function to check if a number is prime
isPrime :: Int -> Bool
isPrime num
  | num <= 1 = False
  | otherwise = all (\i -> num `mod` i /= 0) [2 .. floor (sqrt $ fromIntegral num)]

-- Main function
main :: IO ()
main = do
  -- Input from the user
  putStr "Enter a number: "
  hFlush stdout
  input <- getLine

  -- Convert input to integer
  let n = read input :: Int

  -- Check if the number is prime
  if isPrime n
    then putStrLn $ show n ++ " is a prime number."
    else putStrLn $ show n ++ " is not a prime number."

