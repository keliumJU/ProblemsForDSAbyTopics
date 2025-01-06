/// Remove Element

pub fn remove_element(nums: &mut Vec<i32>, val: i32) -> i32 {
    let mut i: usize = 0;
    while i < nums.len() {
        while i < nums.len() && nums[i] == val {
            nums.remove(i);
        }
        i += 1;
    }

    nums.len() as i32
}
