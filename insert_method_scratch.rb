def insert(num,data)
   current = @head
   (num - 1).times do
     current = current.next_node
   end
   temp = current.next_node
   current.next_node = Node.new(data)
   current.next_node.next_node = temp
 end


 #   insert_count = 0
 #   left_node = @head
 #   if @head.data == nil
 #     @head = Node.new(data)
 #   else
 #     while insert_count < (num-1)
 #       left_node = left_node.next_node
 #       right_node = left_node.next_node
 #       insert_count += 1
 #      end
 #      left_node.next_node = Node.new(data)
 #      left_node.next_node.next_node = right_node
 #    end
 #    data
 # end
 #   #
 #   #
 #   # current = @head
 #   # while current.data != nil &&
 #   #
 #   #
 #   #
 #   #
 #   #
 #   #
 #   #
 #   #
 #   insert_count = 0
 #   current = @head
 #   if @head.data == nil
 #     @head = Node.new(data)
 #   else
 #     while insert_count < num
 #       last_node = current.next_node
 #       insert_count += 1
 #     end
 #     Node.new(data).next_node = last_node.next_node
 #     require 'pry'; binding.pry
 #     last_node.next_node = Node.new(data)
 #   end
 #
 # end
