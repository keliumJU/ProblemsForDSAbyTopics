fn main() {
    //ownership
    //scope
    //String for explain heap and stack, this text will be saved
    let _s = String::from("hello");
    let mut cad = String::from("Hello");
    cad.push_str(", World");
    println!("{}", cad);

    //Memory and Allocation
    //string literal -> compile time -> text hardcoded (fast and efficient), But these properties only come from the string literal's immutability
    //String typep support a mutable, gwable piece of text -> allocate an amount of memory on the heap.
    //The memoroy is automatically returned once the variable that owns it goes out of scope.
    //Natural point when we can return the memory our String needs to the allocator
    //Rust calls drop automatically at the closing curly bracket.

    //Variables and Data Interacting with Move
    //copy of data in a new memory space
    let x = 5;
    let _y = x;

    //String version
    //copy of pointer refers to, not data
    let s1 = String::from("hello");
    let _s2 = s1;

    //if you try to use s1 you get an error, because Rust prevents you from using the invalidate reference
    //eviting the double free bug(memory allocate)
    //so Rust drop the s1 reference, only save s2 reference :) that points the same s1 reference
    //so that would say that s1 was moved into s2


    //Variables and Data Interacting with Clone
    let s1 = String::from("hello");
    let s2 = s1.clone();

    println!("s1 = {}, s2 = {}", s1, s2);

    //Stack-Only Data: Copy
    let x = 5;
    let y = x;

    println!("x = {}, y = {}", x, y);

    //Ownership and functions
    //Passing  a variable to a function will move or copy.
    let ss = String::from("hello");
    takes_ownership(ss);
    
    let xx = 5;
    makes_copy(xx);

    //Return values and scope
    let _s1 = gives_ownership();
    let s2 = String::from("hello");
    let _s3 = takes_and_gives_back(s2);

    //Example ownership with tuple
    let s11 = String::from("hello");
    let (s2, len) = calculate_length(s11);
    println!("The lenght of '{}' is {}.", s2, len);
}

fn calculate_length(s: String) -> (String, usize) {
    let length = s.len();
    (s, length)
}

fn takes_ownership(some_string: String) {
    println!("{}", some_string);
}


fn makes_copy(some_integer: i32) {
    println!("{}", some_integer);
}

fn gives_ownership() -> String {
    let some_string = String::from("yours");
    some_string
}

fn takes_and_gives_back(a_string: String) -> String {
    a_string
}
