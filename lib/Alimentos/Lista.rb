require "Alimentos/version"

Node = Struct.new(:value, :next, :prev)

class Lista

	include Enumerable

	attr_reader :head, :tail, :size
	
	def initialize()
		@head = nil
		@tail = nil
		@size = 0
	end

	def get_head
		if(!empty)
			return @head.value
		else
			return nil
		end
	end

	def get_tail
		if(!empty)
			return @tail.value
		else
			return nil
		end
	end

	def empty
	        if(@size==0)
			true
	        else
			false
	        end
	end

	def push_head(value)
		
		if(empty)
			newNode = Node.new(value,nil,nil)
			@head = newNode
			@tail = newNode
		else
			newNode = Node.new(value,@head,nil)
			@head.prev = newNode
			@head = newNode
		end
		@size += 1
	end

	def push_tail(value)
		if(empty)
			newNode = Node.new(value,nil,nil)
			@head = newNode
			@tail = newNode
		else
			newNode = Node.new(value,nil,@tail)
			@tail.next = newNode
			@tail = newNode
		end
		@size += 1
	end

	def pop_head
		elim_nodo = @head
		if(!empty)
			@head = elim_nodo.next
			elim_nodo = nil
			@size -= 1
		end
	end

	def pop_tail
		elim_nodo = @tail
		if(!empty)
			@tail = elim_nodo.prev
			elim_nodo = nil
			@size -= 1
		end
	end

	def each 
       		iterator = @head
       		while iterator != nil 
            		yield iterator.value
            		iterator=iterator.next
       		end
    	end
end
