fn main() {
    let s = String::from("hello");  // s comes into scope
    takes_ownership(s);             // s moves into the function ...
                                    // ... and is no longer valid here.
                                    //
    let x = 5;                      // x comes into scope
    makes_copy(x);                  // x moves into the function ...
                                    // ... but i32 is copy so x is still valid
                                    // form this point onward.
}

fn takes_ownership(some_string: String) {
    println!("{}", some_string);
}                                   // drop is called on s in heap 

fn makes_copy(some_integer: i32) {
    println!("{}", some_integer);
}                                   // nothing freed from heap
