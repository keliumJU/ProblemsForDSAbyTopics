fn main() {
    //Convert temperatures between Fharenheit and Celsius
    let fahrenheit: i32 = 34;
    let celsius: f32 = fahrenheit_to_celsius(fahrenheit);
    println!("This is {fahrenheit} fahrenheit to celsius: {celsius}");

    let n = 11;

    let nth_fibo = get_nth_fibo(n);
    println!("{nth_fibo}");
}

fn fahrenheit_to_celsius(fahrenheit: i32)-> f32 {
    let res :f32 = (fahrenheit - 32) as f32;
    let div: f32 = 5f32 /9f32;
    res * div
}

fn get_nth_fibo(n: i32) -> i32 {
    let mut v = Vec::new();
    v.push(1);
    v.push(1);
    for i in 1..n {
        let ant = i - 1;
        v.push(v[i as usize] + v[ant as usize]);
    }
    let ans = n-1;
    v[ans as usize]
}
