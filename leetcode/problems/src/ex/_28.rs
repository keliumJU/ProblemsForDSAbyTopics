/// Find the Index of the First Ocurrence in a String

pub fn str_str(haystack: String, needle: String) -> i32 {
    let mut i: usize = 0;
    let mut sz: usize = needle.len();
    let mut ans: usize = 0;
    let mut found: bool = false;

    while sz <= haystack.len() {
        if &haystack[i..sz] == needle {
            ans = i;
            found = true;
            break;
        }
        i += 1;
        sz += 1;
    }

    if found {
        ans as i32
    } else {
        -1
    }
}
