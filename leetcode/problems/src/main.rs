mod ds;
mod ex;

use crate::ds::list_node::{array_to_list, ListNode};
use crate::ex::*;

fn main() {
    println!(
        "{:?}",
        ex::_58::length_of_last_word(String::from("luffy is still joyboy"))
    );
}
