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
        "My true love gave to me\n",
        "And a partridge in a pear tree\n"
    ];
    let verse: [&str; 11] = [
        "Two turtle doves\n",
        "Three French hens\n",
        "Four calling birds\n",
        "Five golden rings\n",
        "Six geese-a-laying\n",
        "Seven swans-a-swimming\n",
        "Eight maids-a-milking\n",
        "Nine ladies dancing\n",
        "Ten lords-a-leaping\n",
        "Eleven pipers piping\n",
        "Twelve drummers drumming\n",
    ];
    for i in 0..12 {
        let day = days[i];
        let head = format!("On the {day} day of Christmas\n").to_string();
        let second_head = static_head[0];
        println!("{head}");
        println!("{second_head}");
        if i > 0 {
            for i in i..0 {
                let body = verse[i];
                println!("{body}")
            }
        }
        let end_verse_song = static_head[1];
        println!("{end_verse_song}");
    }
}
