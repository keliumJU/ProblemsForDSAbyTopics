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

    //loops
    let mut counter = 0;
    let result = loop {
        counter += 1;
        if counter == 10 {
            break counter * 2;
        }
    };
    println!("The result is {result}");
    //loops label
    let mut count = 0;
    'counting_up: loop {
        println!("count = {count}");
        let mut remaining = 10;
        loop {
            println!("remaining = {remaining}");
            if remaining == 9 {
                break;
            }
            if count == 2 {
                break 'counting_up;
            }
            remaining -= 1;
        }
        count += 1;
    }
    println!("End count = {count}");
    //while
    let mut number = 3;
    while number != 0 {
        println!("{number}!");
        number -= 1;
    }
    println!("LIFTOFF!!");
    //for
    let a = [10, 20, 30, 40, 50];
    let mut index = 0;

    while index < 5 {
        println!("the value is: {}",  a[index]);
        index += 1;
    }
    for element in a {
        println!("the value is: {element}");
    }
    //range
    for number in (1..4).rev() {
        println!("{number}!");
    }
    println!("LIFTOFF!!!");
}
