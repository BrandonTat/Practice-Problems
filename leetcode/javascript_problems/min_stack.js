// Design a stack that supports push, pop, top, and retrieving
// the minimum element in constant time.
//
// push(x) -- Push element x onto stack.
// pop() -- Removes the element on top of the stack.
// top() -- Get the top element.
// getMin() -- Retrieve the minimum element in the stack.
// Example:
// MinStack minStack = new MinStack();
// minStack.push(-2);
// minStack.push(0);
// minStack.push(-3);
// minStack.getMin();   --> Returns -3.
// minStack.pop();
// minStack.top();      --> Returns 0.
// minStack.getMin();   --> Returns -2.

/**
 * initialize your data structure here.
 */

class MinStack {
 constructor() {
   this.stack = [];
   this.minStack = [];
 }

 push(x) {
   this.stack.push(x);

   if (this.minStack.length === 0 || this.minStack[this.minStack.length - 1] >= x) {
     this.minStack.push(x);
   }
 }

 pop() {
   let el = this.stack.pop();

   if (this.minStack[this.minStack.length - 1] === el) {
     this.minStack.pop();
   }
 }

 top() {
   return this.stack[this.stack.length - 1];
 }

 getMin() {
   return this.minStack[this.minStack.length - 1];
 }
}
