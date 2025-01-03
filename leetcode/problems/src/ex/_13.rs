/// 13. Roman Integer
use std::collections::HashMap;

pub fn roman_to_int(s: String) -> i32 {
    let mut roman: HashMap<char, i32> = HashMap::new();
    let letters: Vec<char> = vec!['I', 'V', 'X', 'L', 'C', 'D', 'M'];
    let let_values: Vec<i32> = vec![1, 5, 10, 50, 100, 500, 1000];
    let mut ans: i32 = 0;
    let size: usize = s.len();

    for i in 0..letters.len() {
        roman.insert(letters[i], let_values[i]);
    }

    for i in 0usize..size {
        let left: i32 = roman[&s.chars().nth(i).unwrap()];
        if i + 1 < size {
            let right: i32 = roman[&s.chars().nth(i + 1).unwrap()];

            if left < right {
                ans -= left;
            } else {
                ans += left
            }
        } else {
            ans += left;
        }
    }
    ans
}
