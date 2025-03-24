using System.Runtime.InteropServices;
using System.Threading.Tasks.Dataflow;

namespace ArraysLeetcode;
public class TopicArrays{
  // 1929. Concatenation of array
  public int[] GetConcatenation(int[] nums){
    int size = nums.Length;
    int p1 = 0;
    int [] ans = new int[size*2];
    for (int i = 0; i < size; i++) {
      ans[i] = nums[i];
    }
    for (int i = size; i < size*2; i++) {
      ans[i] = nums[p1];
      p1++;
    }
    return ans;
  }

  // 26. Remove Duplicates from Sorted Array
  public int RemoveDuplicates(int[] nums) {
    int k = 0;
    int i = 0;
    int gi = 0;

    while(i < nums.Length && gi < nums.Length-1) {
      if(i+1 < nums.Length && nums[i] != nums[i+1]) {
        if(i+1 - k > 1) {
          int kp = k;
          for(int c = i+1; c < nums.Length; c++) {
            nums[kp+1] = nums[c];
            kp++;
          }
        }
        if(i+1 == nums.Length-1) {
          k++;
          break;
        }else{
          k++;
          i=k;
        }
      }else {
        i++;
      }
      gi++;
    }
    Console.WriteLine(gi);
    return k+1;
  }

  // 27. Remove Element
  public int RemoveElement(int[] nums, int val) {
    int k = 0;
    for(int i = 0; i < nums.Length; i++) {
      if (nums[i] == val) {
        nums[i] = 101;
      }else {
        k++;
      }
    }
    Array.Sort(nums);
    return k;
  }

}
