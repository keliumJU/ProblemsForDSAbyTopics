/// 35. Search Insert Position

pub fn search_insert(nums: Vec<i32>, target: i32) -> i32 {
    // if nums.len() == 1 && target < nums[0] {
    //     return 0;
    // }

    let mut l: usize = 0;
    let mut r: usize = nums.len() - 1;
    let mut m: usize = 0;
    let mut found: bool = false;

    while l <= r {
        let mut x: f64 = ((l + r) / 2) as f64;
        x = x.floor();
        m = x as usize;
        //println!("m: {}", m);

        if target < nums[m] {
            //println!("here?");
            if m > 0 {
                r = m - 1;
            } else {
                break;
            }
        } else if target > nums[m] {
            l = m + 1;
        } else {
            found = true;
            break;
        }

        //println!("l: {}", l);
        //println!("r: {}", r);
    }

    //println!("");
    if found {
        return m as i32;
    } else {
        //println!("not found");
        //println!("M:{}", m);
        if nums[m] < target {
            return (m + 1) as i32;
        } else {
            m as i32
        }
    }

    //(m + 1) as i32
}
