use std::io;

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

    //The character type
    let _c = 'z';
    let _z: char = 'Z';
    let _hearat_eyed_cat = '^';

    //Compound types -> The Tuple Type
    let tup: (i32, f64, u8) = (500, 6.4, 1);
    //pattern matching to destructure a tuple value :)
    let (x, y, z) = tup;
    println!("The value of y is: {y}");
    println!("The value of x is: {x}");
    println!("The value of z is: {z}");

    let tx: (i32, f64, u8) = (500, 6.4, 1);

    let _five_hundred = tx.0;
    let _six_point_four = tx.1;
    let _one = tx.2;
    
    //The array type, fixed size
    let _a = [1,2,3,4,5];
    let _months = ["january", "february", "march"]; // ...
    let _a: [i32; 5] = [1,2,3,4,5];
    //same value for each element
    let _a = [3; 5];
    //accessing Array elements
    let _first = _a[0];
    let _second = _a[1];

    let a = [1, 2, 3 ,4, 5];
    println!("Please enter an array index.");

    let mut index = String::new();

    io::stdin()
        .read_line(&mut index)
        .expect("Failed to read line");

    let index: usize = index
        .trim()
        .parse()
        .expect("Index entered was not a number");
    let element = a[index];

    println!("The value of the element at index {index} is: {element}")

}
