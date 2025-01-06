/// 26. Remove Duplicates from Sorted Array

pub fn remove_duplicates(nums: &mut Vec<i32>) -> i32 {
    let mut i: usize = 0;
    let mut pivot: i32 = nums[0];
    while i < nums.len() {
        if i + 1 < nums.len() {
            if pivot == nums[i + 1] {
                nums.remove(i);
            } else {
                i += 1;
                pivot = nums[i];
            }
        } else {
            break;
        }
    }

    nums.len() as i32
}
