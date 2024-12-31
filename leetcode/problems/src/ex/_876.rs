use crate::ds::list_node::ListNode;

pub fn middle_node(head: Option<Box<ListNode>>) -> Option<Box<ListNode>> {
    let mut current: Option<Box<ListNode>> = head.clone();
    let mut iter = 0;
    while let Some(node) = current {
        iter += 1;
        current = node.next;
    }

    current = head;

    for _i in 0..iter / 2 {
        if let Some(node) = current {
            current = node.next;
        }
    }
    current
}
