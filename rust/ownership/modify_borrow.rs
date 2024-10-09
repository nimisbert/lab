fn main() {
    let s = String::from("hello");  // owned by: 'main'
    println!("before {}", s);       //
    change(&mut s);                 // borrowed as mutable by 'change'
    println!("after {}", s);        //
}                                   // cannot create more than one
                                    // mutable reference by variable

fn change(some_string: &mut String) { // mutable reference
    some_string.push_str(", world");
}
