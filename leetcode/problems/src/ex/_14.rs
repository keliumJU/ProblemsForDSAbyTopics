/// 14. Longest Common Prefix

pub fn longest_common_prefix(strs: Vec<String>) -> String {
    let mut ans: String = String::from("");
    let size: usize = strs.len();
    let mut count: usize = 0;
    let min_str: &String = strs.iter().min_by_key(|s| s.len()).unwrap();

    for i in 0..min_str.len() {
        let char_pivot: char = min_str.chars().nth(i).unwrap();
        for j in 0..size {
            let current: &String = &strs[j];
            let char_current: char = current.chars().nth(i).unwrap();
            if char_pivot == char_current {
                count += 1;
            }
        }

        if count < strs.len() {
            break;
        } else {
            ans.push(char_pivot);
        }

        count = 0;
    }

    ans
}
