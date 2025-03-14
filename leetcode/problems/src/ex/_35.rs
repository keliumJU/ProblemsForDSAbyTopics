/// 35. Search Insert Position

pub fn search_insert(nums: Vec<i32>, target: i32) -> i32 {
    let mut l: usize = 0;
    let mut r: usize = nums.len() - 1;
    let mut m: usize = 0;
    let mut found: bool = false;

    while l <= r {
        let mut x: f64 = ((l + r) / 2) as f64;
        x = x.floor();
        m = x as usize;

        if target < nums[m] {
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
    }

    if found {
        return m as i32;
    } else {
        if nums[m] < target {
            return (m + 1) as i32;
        } else {
            m as i32
        }
    }
}
