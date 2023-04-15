fn main() {
    //References and borrowing
    //is how a pointer
    let s1 = String::from("hello");
    let len = calculate_length(&s1);
    println!("The length of '{}' is {}.", s1, len);


    //Mutable references
    let mut s = String::from("hello");
    change(&mut s);
    println!("{}", s);

    //Error code
    let mut s2 = String::from("hello");
    let r2 = &mut s2;
    let r3 = &mut s2;

    println!("{}, {}", r2, r3);

    //it's not posible double refrence, this restriction, preventing multiple
    //mutable references to the same data at the same time allows for mutation but in a very controlled fashion
    
}

fn change(some_string: &mut String) {
    some_string.push_str(", world");
}

fn calculate_length(s: &String) -> usize {
    s.len()
}
