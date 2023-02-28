package pkg

func Remove(nums []int, i int) []int {
	if i < 0 || i > len(nums) - 1 {
		return nums
	}

	nums[i] = nums[len(nums) - 1]

	return nums[:len(nums) - 1]
}
