fn main() {
    let mut s = String::from("hello world");        // new string
    let word = first_word(&s);                      // find first word -> 5
    s.clear();                                      // clears s
                                                    // the result of s is no
                                                    // longer valid
}

fn first_word(s: &String) -> usize {                // find first word in s
    let bytes = s.as_bytes();                       // convert to bytes
    for (i, &item) in bytes.iter().enumerate() {    // iterate over bytes
        if item == b' ' {                           // if byte is space
            return i;                               // return end of first word
        }                                           // otherwise
    }                                               // iterate till end of s
    return s.len();                                 // first word is s
}
