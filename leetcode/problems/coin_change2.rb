# You are given coins of different denominations and a total amount of
# money. Write a function to compute the number of combinations that
# make up that amount. You may assume that you have infinite number
# of each kind of coin.
#
# Note: You can assume that
#
# 0 <= amount <= 5000
# 1 <= coin <= 5000
# the number of coins is less than 500
# the answer is guaranteed to fit into signed 32-bit integer
# Example 1:
#
# Input: amount = 5, coins = [1, 2, 5]
# Output: 4
# Explanation: there are four ways to make up the amount:
# 5=5
# 5=2+2+1
# 5=2+1+1+1
# 5=1+1+1+1+1
# Example 2:
#
# Input: amount = 3, coins = [2]
# Output: 0
# Explanation: the amount of 3 cannot be made up just with coins of 2.
# Example 3:
#
# Input: amount = 10, coins = [10]
# Output: 1

# param {Integer} amount
# param {Integer[]} coins
# return {Integer}

def change(amount, coins)
  return 1 if amount.zero?
  return 0 if coins.empty?

  dp = Array.new(coins.length) { Array.new(amount + 1, 0) }

  (0..amount).each do |am|
    dp[0][am] = 1 if (am % coins.first).zero?
  end

  (1...coins.length).each do |coin_idx|
    (0..amount).each do |am|
      dp[coin_idx][am] = dp[coin_idx - 1][am]

      cur_amount = am - coins[coin_idx]

      if cur_amount >= 0
        dp[coin_idx][am] += dp[coin_idx][cur_amount]
      end
    end
  end

  dp.last.last
end

# Time Complexity - O(mn)
# Space Complexity - O(mn)

# m = number of coins
# n = amount
