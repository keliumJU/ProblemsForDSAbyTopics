/// 20. Valid Parentheses

pub fn is_valid(s: String) -> bool {
    let mut ans: bool = true;
    let mut v: Vec<char> = Vec::new();
    let mut same_character: bool = true;

    for c in s.chars() {
        if c == ')' && !v.is_empty() {
            same_character = false;
            if v.pop().unwrap() != '(' {
                ans = false;
                same_character = false;
                break;
            }
        } else if c == ']' && !v.is_empty() {
            same_character = false;
            if v.pop().unwrap() != '[' {
                ans = false;
                break;
            }
        } else if c == '}' && !v.is_empty() {
            same_character = false;
            if v.pop().unwrap() != '{' {
                ans = false;
                break;
            }
        } else {
            v.push(c);
        }
    }

    if same_character && ans {
        ans = false
    }

    if v.is_empty() == false {
        ans = false
    }

    ans
}
