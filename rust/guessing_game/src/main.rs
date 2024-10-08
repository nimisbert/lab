use std::io;                                // Librairie standard: io
use rand::Rng;                              // Librairie (Rust Crate) random numbers
use std::cmp::Ordering;                     // Librairie standard: Less, Greater and Equal

fn main() {                                 // Main
    println!("Guess the number !");         // MACRO Print nom du prog.

    let secret_number = rand::thread_rng()  // Random number generator
        .gen_range(1..=100);                // Method takes a range and generates a number
    println!("The secret number is: {secret_number}");
    loop {
        println!("Please input your guess.");
        let mut guess = String::new();          // Mutable variable bound to new instance of string

        io::stdin()                             // Handle to the standard input
            .read_line(&mut guess)              // Method read_line passage de guess par reference
            .expect("Failed to read line");     // Ok || Err, if Err, expect will crash the prog.

        let guess: u32 = match guess.trim().parse() { // Shadows & removes newline i.e. "5\r\n" => "5"
            Ok(num) => num,
            Err(_) => continue,
        };

        println!("You guessed: {guess}");       // Print content of variable guess

        match guess.cmp(&secret_number) {
            Ordering::Less => println!("Too small!"),
            Ordering::Greater => println!("Too big!"),
            Ordering::Equal => { 
                println!("You win!");
                break;                          // Exit the loop
            }
        }
    }
}
