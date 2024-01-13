package main

import (
	"fmt"
	"math"
	"strconv"
)

// Function to check if a number is prime
func isPrime(num int) bool {
	if num <= 1 {
		return false
	}
	for i := 2; i <= int(math.Sqrt(float64(num))); i++ {
		if num%i == 0 {
			return false
		}
	}
	return true
}

// Main function
func main() {
	// Input from the user
	fmt.Print("Enter a number: ")
	var input string
	fmt.Scanln(&input)

	// Convert input to integer
	n, err := strconv.Atoi(input)
	if err != nil {
		fmt.Println("Invalid input. Please enter a valid number.")
		return
	}

	// Check if the number is prime
	if isPrime(n) {
		fmt.Printf("%d is a prime number.\n", n)
	} else {
		fmt.Printf("%d is not a prime number.\n", n)
	}
}

