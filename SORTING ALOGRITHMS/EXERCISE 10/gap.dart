// Maximum Gap

// Given an integer array nums, return the maximum difference between two successive elements in its sorted form. If the array contains less than two elements, return 0.

// You must write an algorithm that runs in linear time and uses linear extra space.

 

// Example 1:

// Input: nums = [3,6,9,1]
// Output: 3
// Explanation: The sorted form of the array is [1,3,6,9], either (3,6) or (6,9) has the maximum difference 3.
// Example 2:

// Input: nums = [10]
// Output: 0
// Explanation: The array contains less than 2 elements, therefore return 0.
 

// Constraints:

// 1 <= nums.length <= 10^5
// 0 <= nums[i] <= 10^9


class Solution {
  int maximumGap(List<int> nums) {
    if (nums.length < 2) return 0;
    nums.sort();
    int max = 0;
    for (int i = 0; i < nums.length - 1; i++) {
      if (nums[i + 1] - nums[i] > max) max = nums[i + 1] - nums[i];
    }
    return max;

  }
}