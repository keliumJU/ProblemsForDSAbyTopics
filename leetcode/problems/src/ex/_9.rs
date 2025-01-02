/// 9. Palindrome Number

pub fn is_palindrome(x: i32) -> bool {
    if x < 0 && x > -10 {
        return false;
    }

    let mut cx: i32 = x;
    let mut n: i32 = cx;
    let mut vec: Vec<i32> = Vec::new();
    let mut ans: bool = true;

    if cx < 0 {
        cx *= -1;
        n = cx;
    }

    while n != 0 {
        vec.push(n % 10);
        cx /= 10;
        n = cx;
    }

    let size: usize = vec.len();

    if x < 0 {
        vec[size - 1] = vec[size - 1] * -1;
    }

    let mut j: usize = size - 1;

    for i in 0..size / 2 {
        if vec[i] != vec[j] {
            ans = false;
            break;
        }
        j -= 1;
    }

    ans
}
