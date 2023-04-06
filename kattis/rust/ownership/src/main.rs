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
}
