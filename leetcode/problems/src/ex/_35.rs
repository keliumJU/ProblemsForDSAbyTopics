/// 35. Search Insert Position

pub fn search_insert(nums: Vec<i32>, target: i32) -> i32 {
    let mut found: bool = false;
    // let mut i: i32 = 0;
    let mut middle: usize = nums.len() / 2;
    let mut ans = 0;

    while middle < nums.len() && middle > 0 {
        // println!("only here?");
        println!("{}-middle", middle);

        if nums[middle] == target {
            ans = middle;
            found = true;
        }

        if target < nums[middle] {
            // lower bound
            middle /= 2;
        } else {
            // upper case
            let upp_middle = middle / 2;
            middle = middle + upp_middle;
        }
    }

    if found {
        ans as i32
    } else {
        //println!("{}", middle);
        //middle = middle - 1;
        middle as i32
    }
}
