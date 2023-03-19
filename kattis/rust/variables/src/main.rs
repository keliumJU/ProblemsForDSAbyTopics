fn main() {
    let mut x = 5;
    println!("The value of x is: {x}");
    x  = 6;
    println!("The value of x is: {x}");

    //Shadowing variables
    let y = 5;
    let y = y + 1;
    {
        let y = y * 2;
        println!("The value of x in the inner scope eis: {y}");
    }
    println!("The value of x is:  {y}");
    
    //data types (rust is a statically typed language)
    let _guess: u32 = "42".parse().expect("Not a number!");

    //Scalar types
    //integer types
}
