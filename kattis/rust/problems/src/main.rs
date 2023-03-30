fn main() {
    //Convert temperatures between Fharenheit and Celsius
    let fahrenheit: i32 = 34;
    let celsius: f32 = fahrenheit_to_celsius(fahrenheit);
    println!("This is {fahrenheit} fahrenheit to celsius: {celsius}");
}

fn fahrenheit_to_celsius(fahrenheit: i32)-> f32 {
    let res :f32 = (fahrenheit - 32) as f32;
    let div: f32 = 5f32 /9f32;
    res * div
}
