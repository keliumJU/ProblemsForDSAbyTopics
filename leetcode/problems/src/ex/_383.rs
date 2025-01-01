use std::collections::HashMap;

pub fn can_construct(ransom_note: String, magazine: String) -> bool {
    let mut ransom_map: HashMap<char, i32> = HashMap::new();
    let mut magazine_map: HashMap<char, i32> = HashMap::new();

    for c in ransom_note.chars() {
        *ransom_map.entry(c).or_insert(0) += 1;
    }

    for c in magazine.chars() {
        *magazine_map.entry(c).or_insert(0) += 1;
    }

    let mut ans: bool = true;

    for (key, value) in ransom_map.iter() {
        match magazine_map.get(&key) {
            Some(magazine_value) => {
                if magazine_value < value {
                    ans = false;
                    break;
                }
            }
            None => {
                ans = false;
                break;
            }
        }
    }
    ans
}
