/// 66. Plus One

pub fn plus_one(digits: Vec<i32>) -> Vec<i32> {
    let mut vec: Vec<i32> = Vec::new();
    let mut x: i32 = 1;

    for i in (0..digits.len()).rev() {
        vec.push((digits[i] + x) % 10);
        x += digits[i];
        x /= 10;
    }

    if x == 1 {
        vec.push(x);
    }

    vec.reverse();

    vec
}
