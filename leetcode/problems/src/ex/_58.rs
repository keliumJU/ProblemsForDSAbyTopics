/// 58. Lenght of Last Word
pub fn length_of_last_word(s: String) -> i32 {
    let mut ans = 0;
    let mut v: Vec<char> = Vec::new();

    for c in s.chars() {
        v.push(c);
    }

    for i in (0..v.len()).rev() {
        if v[i] != ' ' {
            ans += 1;
        } else if ans > 0 {
            break;
        }
    }

    ans
}
