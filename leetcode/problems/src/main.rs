mod ds;
mod ex;

use crate::ds::list_node::{array_to_list, ListNode};
use crate::ex::*;

fn main() {
    let heap: Option<Box<ListNode>> = array_to_list(&[1, 2, 3, 4, 5, 6]);
    println!("{:?}", ex::_876::middle_node(heap));
}
