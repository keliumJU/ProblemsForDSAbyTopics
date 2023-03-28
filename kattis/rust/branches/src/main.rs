fn main() {
    let number = 3;

    if number < 5 {
        println!("Condition was true");
    }else {
        println!("Condition was false");
    }

    //Handling Multiple Conditions with else if
    let number_2 = 6;

    if number_2 % 4 == 0 {
        println!("number is divisible by 4");
    }else if number_2 % 3 == 0 {
        println!("number is divisible by 3");
    }else if number_2 % 2 == 0 {
        println!("number is divisible by 2");
    }else {
        println!("number is not divisible by 4, 3, or 2");
    }

    //Using if in a let Statement
    let condition = true;
    let number = if condition { 5 } else { 6 };
    println!("The value of number is: {number}");
}
