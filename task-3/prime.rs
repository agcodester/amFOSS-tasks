use std::io;

// Function to check if a number is prime
fn is_prime(num: u32) -> bool {
    if num <= 1 {
        return false;
    }
    for i in 2..=f64::sqrt(num as f64) as u32 {
        if num % i == 0 {
            return false;
        }
    }
    true
}

// Main function
fn main() {
    // Input from the user
    println!("Enter a number: ");
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Failed to read line");

    // Convert input to unsigned integer
    let n: u32 = match input.trim().parse() {
        Ok(num) => num,
        Err(_) => {
            println!("Invalid input. Please enter a valid number.");
            return;
        }
    };

    // Check if the number is prime
    if is_prime(n) {
        println!("{} is a prime number.", n);
    } else {
        println!("{} is not a prime number.", n);
    }
}

