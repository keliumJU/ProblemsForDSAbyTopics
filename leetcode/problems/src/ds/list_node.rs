#[derive(PartialEq, Eq, Clone, Debug)]
pub struct ListNode {
    pub val: i32,
    pub next: Option<Box<ListNode>>,
}

impl ListNode {
    #[inline]
    fn new(val: i32) -> Self {
        ListNode { next: None, val }
    }
}

pub fn array_to_list(arr: &[i32]) -> Option<Box<ListNode>> {
    let mut head: Option<Box<ListNode>> = None;
    let mut tail: &mut Option<Box<ListNode>> = &mut head;

    for &val in arr {
        *tail = Some(Box::new(ListNode { val, next: None }));
        tail = &mut (*tail).as_mut().unwrap().next;
    }
    head
}

pub fn is_empty(list: Option<Box<ListNode>>) -> bool {
    if list == None {
        return true;
    }
    false
}

// pub fn insert_after(
//     mut node: Option<Box<ListNode>>,
//     mut node_before: Option<Box<ListNode>>,
// ) -> Option<Box<ListNode>> {
//     if node_before.is_none() {
//         node.as_mut().unwrap().next = None;
//         node_before = node;
//     } else {
//         let tndb = node_before.as_mut().unwrap().next.take();
//         //node.as_mut().unwrap().next = tndb;
//         //node_before.as_mut().unwrap().next = node;
//         node_before.as_mut().unwrap().next = node;
//         node.as_mut().unwrap().next = tndb;
//     }

//     node_before
// }

// pub fn insert_before() {}
