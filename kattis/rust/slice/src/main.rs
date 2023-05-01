fn main() {
    //Is a kind of reference, so it does not have ownership.
    println!("The slice type!");

    //problem return the first word of string of words
    let mut words = String::from("nope or what?");
    let ans: String = get_first_word(&mut words);
    println!("{ans}");
}

fn get_first_word(words: &mut String) -> String {
    words.push_str(" ");
    let collect_words= words.split(" ");
    let mut response: String = String::from("");
    for word in collect_words{
        response.push_str(word);
        break;
    }
    response
}
