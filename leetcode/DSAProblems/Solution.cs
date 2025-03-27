using System.Runtime.CompilerServices;
using System.Runtime.Serialization;

public class Solution
{
    public int ClimbStairs(int n)
    {
        // Pattern related to fibonacci series
        if (n < 3) return n;
        int[] nums = new int[n];

        nums[0] = 1;
        nums[1] = 2;

        for (int i = 2; i < n; i++)
        {
            nums[i] = nums[i - 1] + nums[i - 2];
        }

        return nums[n - 1];
    }

    public ListNode MergeTwoList(ListNode list1, ListNode list2)
    {
        List<int> vec = new List<int>();
        while (list1 != null)
        {
            vec.Add(list1.val);
            list1 = list1.next;
        }

        while (list2 != null)
        {
            vec.Add(list2.val);
            list2 = list2.next;
        }

        if (vec.Count() == 0)
        {
            return null;
        }

        vec.Sort();

        ListNode ans = new ListNode(vec[0]);
        ListNode current = ans;

        for (int i = 1; i < vec.Count(); i++)
        {
            while (current.next != null)
            {
                current = current.next;
            }
            current.next = new ListNode(vec[i]);
        }

        return ans;
    }

    public ListNode DeleteDuplicates(ListNode head)
    {
        if (head == null) return null;

        ListNode ans = new ListNode(head.val);
        ListNode tmp = ans;

        while (head.next != null)
        {
            //Console.WriteLine($"head:{head.val} - headnext:{head.next.val}");
            if (head.val != head.next.val)
            {
                //Console.WriteLine("new element");
                while (tmp.next != null)
                {
                    tmp = tmp.next;
                }
                tmp.val = head.val;
                tmp.next = new ListNode();
            }
            head = head.next;
        }

        if (tmp.next != null && tmp.next.val != head.val)
        {
            tmp.next.val = head.val;
        }

        return ans;
    }

    // Work in progress
    public void Merge(int[] nums1, int m, int[] nums2, int n)
    {
        List<int> list = new List<int>();
        int p1 = 0;
        int p2 = 0;
        for (int i = 0; i < m + n; i++)
        {
            if (p1 < m && p2 < n)
            {
                if (nums1[p1] < nums2[p2])
                {
                    list.Add(nums1[p1]);
                    p1++;
                }
                else
                {
                    list.Add(nums2[p2]);
                    p2++;
                }
            }
            else
            {
                if (p1 < m)
                {
                    list.Add(nums1[p1]);
                    p1++;
                }
                else if (p2 < n)
                {
                    list.Add(nums2[p2]);
                    p2++;
                }
            }
        }
        for (int i = 0; i < (m + n); i++)
        {
            nums1[i] = list[i];

        }
    }
}
