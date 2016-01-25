=begin
===========QUIZ ONE-QUESTION 1==============
Difference between stack and a queue

A stack is a container of objects that are inserted and removed according to the last-in first-out (LIFO) principle.

A queue is a container of objects (a linear collection) that are inserted and removed according to the first-in first-out (FIFO) principle.

The difference between stacks and queues is in removing. In a stack we remove the item the most recently added; in a queue, we remove the item the least recently added.
=end
class StackDemo

  def initialize(items)
    @items = items
  end

  def add(item)
    @items.push(item)
  end

  def remove
    @items.pop
  end
end

class QueueDemo
  def initialize(items)
    @items = items
  end

  def add(item)
    @items.unshift(item)
  end

  def remove
    @items.pop
  end
end

my_arr = [1,2,3,4,5,6]

#Last-In-First-Out
puts ">>>>>>>>>>>>>>>> STACK DEMO >>>>>>>>>>>>>>>\n"
puts "Elements in the Array before any operation: " + my_arr.to_s + "\n"
my_stack = StackDemo.new(my_arr)
puts "Add a new element to the array - Element 7\n"
my_stack.add(7)
puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>\n"
puts "Elements in the Array after adding the element: "+ my_arr.to_s + "\n"
puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>\n"
puts "Now removing the last added element(7) from the array\n"
my_stack.remove
puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>\n"
puts "Elements in the Array after removing the element: " + my_arr.to_s + "\n thus demonstrating the Last-In-First-Out principle\n\n"


# First-In-First-Out
puts ">>>>>>>>>>>>>>>> QUEUE DEMO >>>>>>>>>>>>>>>\n"
puts "Elements in the Array before any operation: " + my_arr.to_s + "\n"
my_queue = QueueDemo.new(my_arr)
puts "Add a new element to the array - Element 7" + "\n"
my_queue.add(7)
puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>\n"
puts "Elements in the Array after adding the element: "+ my_arr.to_s + "\n"
puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>\n"
puts "Now removing the last added element(7) from the array" +"\n"
my_queue.remove
puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>\n"
puts "Elements in the Array after removing the element: " + my_arr.to_s + "\n thus demonstrating the First-In-First-Out principle\n\n"
