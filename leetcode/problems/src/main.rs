mod ds;
mod ex;

use crate::ds::list_node::ListNode;
use crate::ex::*;

fn main() {
    let heap: Option<Box<ListNode>> = [1, 2, 3];
    println!("{:?}", ex::_876::middle_node(heap));
}
