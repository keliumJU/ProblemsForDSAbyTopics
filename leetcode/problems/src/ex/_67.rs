/// 67. Add Binary

pub fn add_binary(a: String, b: String) -> String {
    let mut ans: Vec<String> = Vec::new();
    let mut va: Vec<char> = Vec::new();
    let mut vb: Vec<char> = Vec::new();
    let sz: usize;

    for c in a.chars() {
        va.push(c);
    }

    for c in b.chars() {
        vb.push(c);
    }

    if a.len() < b.len() {
        sz = a.len();
        for i in (0..sz).rev() {
            println!("{}", va[i])
        }
    } else {
        println!("here?");
        sz = b.len();
        for i in (0..sz).rev() {
            let x: String = get_add(va[i].to_string(), vb[i].to_string());
            if x != "10" {
                ans.push(x);
            }
        }
    }

    println!("{:#?}", va);
    println!("{:#?}", vb);
    println!("{:#?}", false || false);

    ans
}
pub fn get_add(x: String, y: String) -> String {
    if x == "0" && y == "0" {
        "0".to_string()
    } else if x == "1" && y == "1" {
        "10".to_string()
    } else {
        "1".to_string()
    }
}
