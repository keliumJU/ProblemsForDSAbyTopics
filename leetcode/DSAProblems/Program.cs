using ArraysLeetcode;

// See https://aka.ms/new-console-template for more information
ListNode parseArrayToListNode(int[] list, int sz)
{
    if (list.Length == 0)
    {
        return new ListNode();
    }

    if (list.Length >= 1)
    {
        ListNode ans = new ListNode(list[0]);
        ListNode current = ans;
        for (int i = 1; i < sz; i++)
        {
            while (current.next != null)
            {
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

string printListNode(ListNode head)
{
    string result = "";
    while (head != null)
    {
        result += head.val.ToString() + ", ";
        head = head.next;
    }
    return result;
}

var problem = new TopicArrays();
int[] digits = [9, 9];
Console.WriteLine(string.Join(", ", problem.PlusOne(digits)));
