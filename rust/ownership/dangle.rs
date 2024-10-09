fn main() {
    let reference_to_nothing = dangle();
}

fn dangle() -> & String {           // returns reference to String
    let s = String::from("hello");  // owns a String named s
    return &s;                      // returns a reference to s
}                                   // the memory of s is dropped
                                    // return reference is a dangling pointer
