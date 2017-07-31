class MinStack

=begin
  initialize your data structure here.
=end
  def initialize()
    @stack = []
    @min_stack = []
  end


=begin
  :type x: Integer
  :rtype: Void
=end
  def push(x)
    @stack.push(x)
    @min_stack.push(x) if @min_stack.empty? || @min_stack[-1] >= x
  end


=begin
  :rtype: Void
=end
  def pop()
    @min_stack.pop() if @min_stack[-1] == @stack[-1]
    @stack.pop()
  end


=begin
  :rtype: Integer
=end
  def top()
    @stack[-1]
  end


=begin
  :rtype: Integer
=end
  def get_min()
    @min_stack[-1]
  end


end
