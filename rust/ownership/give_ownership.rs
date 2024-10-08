fn main() {
    let s1 = gives_ownership();         // gives ownership moves its return
                                        // value into s1
    let s2 = String::from("hello");     // s2 comes into scope
                                        //
    let s3 = takes_and_gives_back(s2);  // s2 is moved into 
                                        // takes and gives back, which also
                                        // moves its return value into s3
}

fn gives_ownership() -> String {
    let some_string = String::from("yours");
    return some_string
}

fn takes_and_gives_back(a_string: String) {
    a_string
}
