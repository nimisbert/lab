fn main() {
    let x = 5;                          // 1er declaration
    let x =  x + 1;                     // 2em declaration Shadowing
    {
        let x = x*2;                    // 3em declaration Shadowing
        println!("Inner scope x = {x}")
    }
    println!("Outer scope x = {x}")     // 2em declaration (chgt scope)
}
