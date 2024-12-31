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
