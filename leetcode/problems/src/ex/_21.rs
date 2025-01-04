/// 21. Merge Two Sorted List
use crate::ds::list_node::ListNode;

pub fn merge_two_lists(
    list1: Option<Box<ListNode>>,
    list2: Option<Box<ListNode>>,
) -> Option<Box<ListNode>> {
    let mut l1: Option<Box<ListNode>> = list1.clone();
    let mut l2: Option<Box<ListNode>> = list2.clone();

    let mut be_insert: bool = false;

    while let Some(mut l2n) = l2 {
        // insert in head (before)
        // review if i'ts an empty linked list
        if let Some(l1h) = &l1 {
            if l2n.val <= l1h.val {
                be_insert = true;
                l2n.next = l1;
            }
        };

        be_insert = false;

        while let Some(l1n) = l1 {
            // insert in body (after)
            if l2n.val <= l1n.val {
                be_insert = true;
            }
            l1 = l1n.next;
        }
        l2 = l2n.next;
    }

    list1
}
