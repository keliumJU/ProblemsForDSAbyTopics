mod ds;
mod ex;

use crate::ds::list_node::{array_to_list, ListNode};
use crate::ex::*;

fn main() {
    let strs: Vec<String> = vec![
        String::from("flower"),
        String::from("flow"),
        String::from("flight"),
    ];
    println!("{:?}", ex::_14::longest_common_prefix(strs));
}
