/// 1342. Number of Steps to Reduce a Number to Zero

pub fn number_of_steps(mut num: i32) -> i32 {
    let mut steps: i32 = 0;
    while num != 0 {
        if num % 2 == 0 {
            num /= 2;
        } else {
            num -= 1;
        }
        steps += 1;
    }

    steps
}
