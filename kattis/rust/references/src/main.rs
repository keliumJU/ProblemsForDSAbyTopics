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
    /*
    let mut s2 = String::from("hello");
    let r2 = &mut s2;
    let r3 = &mut s2;

    println!("{}, {}", r2, r3);
    */

    //it's not posible double refrence, this restriction, preventing multiple
    //mutable references to the same data at the same time allows for mutation but in a very controlled fashion

    //references when the variable it's out of scope
    let mut s2 = String::from("Hello");
    {
        let r1 = &mut s;
    } // r1 goes out of scope here, so we can make a new references with no problems.
    let r2 = &mut s;

    //note: we cannot have a mutable reference while we have an immutable one to the same value
    /*
        let r1 = &s1;
        let r2 = &s1;
        let r3 = &mut s2;
    */
    //only we can use separatly

    let mut s = String::from("hello");
    let r1 = &s;
    let r2 = &s;
    println!("{} and {}", r1, r2);
    // variables r1 and r2 will not be used after this point

    let r3 = &mut s;
    println!("{}", r3);

    //Dangling References
    let reference_to_nothing = dangle();
    println!("{}", reference_to_nothing);

    //The rules of references
    // 1. At any given time, you can have either one mutable reference or any nomber of immutable references.
    // 2. References must always be valid.
}

fn dangle() -> String {
    let s = String::from("hello");
    s
}

fn change(some_string: &mut String) {
    some_string.push_str(", world");
}

fn calculate_length(s: &String) -> usize {
    s.len()
}
