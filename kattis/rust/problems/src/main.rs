fn main() {
    //Convert temperatures between Fharenheit and Celsius
    let fahrenheit: i32 = 34;
    let celsius: f32 = fahrenheit_to_celsius(fahrenheit);
    println!("This is {fahrenheit} fahrenheit to celsius: {celsius}");

    let n = 11;

    let nth_fibo = get_nth_fibo(n);
    println!("{nth_fibo}");

    print_lyrics_cristmas_carol();
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

fn print_lyrics_cristmas_carol(){

    let days: [&str; 12] = [
        "first", "second", "third", "fourth", "fifth", "sixth", "seventh", "eighth", "ninth", "tenth", "eleventh", "twelfth"
    ];
    let static_head: [&str; 2] = [
        "My true love gave to me",
        "And a partridge in a pear tree"
    ];
    let verse: [&str; 11] = [
        "Two turtle doves",
        "Three French hens",
        "Four calling birds",
        "Five golden rings",
        "Six geese-a-laying",
        "Seven swans-a-swimming",
        "Eight maids-a-milking",
        "Nine ladies dancing",
        "Ten lords-a-leaping",
        "Eleven pipers piping",
        "Twelve drummers drumming",
    ];
    for i in 0..12 {
        let day = days[i];
        let head = format!("On the {day} day of Christmas").to_string();
        let second_head = static_head[0];
        println!("{head}");
        println!("{second_head}");
        if i > 0 {
            for j in (0..i).rev().step_by(1) {
                let body = verse[j];
                println!("{body}");
            }
        }
        let end_verse_song = static_head[1];
        println!("{end_verse_song}");
        println!("----------------------------------------------");
    }
}
