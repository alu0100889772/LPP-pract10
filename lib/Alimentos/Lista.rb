# @author Alberto Delgado Soler

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

	# Returns the first object in the list.
	#
	# @return the object in the head of the list.
	def get_head
		if(!empty)
			return @head.value
		else
			return nil
		end
	end

	# Returns the last object in the list.
	#
	# @return the object in the tail of the list.
	def get_tail
		if(!empty)
			return @tail.value
		else
			return nil
		end
	end

	# Calculates if the list is empty or not.
	#
	# @return [boolean] true if the list is empty, false otherwise.
	def empty
	        if(@size==0)
			true
	        else
			false
	        end
	end

	# Adds a new element to the list by the start.
	#
	# @param value the object that will be added.
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

	# Adds a new element to the list by the end.
	#
	# @param value the object that will be added.
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

	# Removes a element at the start of the list.
	def pop_head
		elim_nodo = @head
		if(!empty)
			@head = elim_nodo.next
			elim_nodo = nil
			@size -= 1
		end
	end

	# Removes a element at the end of the list.
	def pop_tail
		elim_nodo = @tail
		if(!empty)
			@tail = elim_nodo.prev
			elim_nodo = nil
			@size -= 1
		end
	end

	# Implemented to be compatible with module Enumerable.
	def each 
       		iterator = @head
       		while iterator != nil 
            		yield iterator.value
            		iterator=iterator.next
       		end
    	end
end
