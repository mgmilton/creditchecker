require_relative 'node'
require 'pry'

class LinkedList
  attr_reader :head,
              :next_node,
              :data

  def initialize
    @head = Node.new(nil)
    @count = 0
  end

  def append(data)
    @count =1
    current = @head
    if @head.data = nil
        @head = Node.new(entry)
    else
      while current.next_node != nil
        current = current.next_node
      end
      current.next_node = Node.new(data, nil)
    end
    data
  end

  def to_string(data)

  end


  def count
    if @head == nil
      count = 0
    else
      count += 1
      current = @head
      while current.next_node != nil
        count += 1
        current = current.next_node
      end
    end
    count
  end

list = LinkedList.new
list.append("dog")
list.append("cat")
list.append("fish")
p list

current = @head
while current.next_node != nil
  current = current.next_node
end
  current.next_node = Node.new(data, nil)
end

# linked_list if statment
# def append()
#  @count =1
#  current_node = @head
#  if @head.data = nil
#    @head = Node.new(entry)
#    entry
#  else
#    while


#case adding first instance of data
#case
# def append(data)
#   @count += 1
#   if head.nil?
#     @head = Node.new(data)
#     @tail = Node.new(data)
#   else
#     data.next_node = @head
#     @head = data
#   end
# end
#
# #case adding second instance of data
# def append(data)
#   if head.nil?
#     @head = Node.new(data)
#     @tail = Node.new(data)
#   else
#     @tail.next_node = data
#     @tail = data
#   end
# end
#
#
# def append(data)
#   @count += 1
#   if head == nil
#     @head = Node.new(data)
#     @tail = Node.new(data)
#     data
#   else
#     Node.next_node(data)
#     data
#   end
# end
