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
    // i32, u32, i8, u8, isize, usize ...
    //Integer overflow
    //-> wrapping_*, wrapping_add, overflowing_*, saturating_*, ...
    //Floating-point types
    //-> f32, f64 ==> all signed

    let _zf = 2.0; //f64 (double precision float)
    let _yf: f32 = 3.0; //f32

    //Numeric operations
    //adition
    let _sum = 5 + 10;

    //sutraction
    let _difference = 95.5 - 4.3;

    //miltiplication
    let _product  = 4 * 30;

    //division
    let _qutient = 56.7 / 32.2;
    let _truncated = -5 / 3;

    // remainder
    let _remainder = 43 % 5;

    //The boolean Type
    let _t = true;
    let _f: bool = false;
}
