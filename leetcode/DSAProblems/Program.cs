using ArraysLeetcode;

// See https://aka.ms/new-console-template for more information
ListNode parseArrayToListNode(int [] list, int sz) {
  if (list.Length == 0) {
    return new ListNode();
  }

  if (list.Length >= 1) {
    ListNode ans = new ListNode(list[0]);
    ListNode current = ans;
    for (int i = 1; i < sz; i++) {
      while (current.next != null) {
        current = current.next;
      }
      ListNode node = new ListNode(list[i]);
      current.next = node;
    }
    //Console.WriteLine(printListNode(current));
    return ans;
  }

  return new ListNode(list[0]);
}

string printListNode(ListNode head) {
  string result = "";
  while (head != null) {
    result += head.val.ToString() + ", ";
    head = head.next;
  }
  return result;
}

//ListNode l1 = parseArrayToListNode([1,1,2,2,4,4,6,7,8], 9);
//ListNode l2 = parseArrayToListNode([1,1,3,4], 4);
// Console.WriteLine(printListNode(l1));

//int[] nums1 = [];
//int[] nums2 = [1];

//Solution sol = new();
//sol.Merge(nums1, 0, nums2, 1);
//Console.WriteLine(string.Join(", ", nums1));



//int[] nums = [1,3,2,1];
//var problem = new TopicArrays();
//Console.WriteLine(string.Join(", ", problem.GetConcatenation(nums)));

// var problem = new TopicArrays();
// int[] nums = [1,1,2,2,2,3];
// Console.WriteLine(problem.RemoveDuplicates(nums));
// Console.WriteLine(string.Join(", ", nums));

var problem = new TopicArrays();
int[] nums = [0,1,2,2,3,0,4,2];
Console.WriteLine(problem.RemoveElement(nums, 2));
Console.WriteLine(string.Join(", ", nums));



