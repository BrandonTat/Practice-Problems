# Evaluate the value of an arithmetic expression in Reverse Polish Notation.
#
# Valid operators are +, -, *, /. Each operand may be an integer or another expression.
#
# Some examples:
#   ["2", "1", "+", "3", "*"] -> ((2 + 1) * 3) -> 9
#   ["4", "13", "5", "/", "+"] -> (4 + (13 / 5)) -> 6

# param {String[]} tokens
# return {Integer}

def eval_rpn(tokens)
  values = []

  tokens.each do |token|
    if token == "+"
      v1 = values.pop
      v2 = values.pop
      values << (v2 + v1)
    elsif token == "-"
      v1 = values.pop
      v2 = values.pop
      values << (v2 - v1)
    elsif token == "*"
      v1 = values.pop
      v2 = values.pop
      values << (v2 * v1)
    elsif token == "/"
      v1 = values.pop
      v2 = values.pop
      values << (v2.fdiv(v1).truncate)
    else
      values << token.to_i
    end
  end

  values.last
end

# Time Complexity - O(n)
# Space Complexity - O(n)
