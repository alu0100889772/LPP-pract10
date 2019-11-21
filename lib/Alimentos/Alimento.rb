require "Alimentos/version"


class Alimento
	attr_reader :nombre, :proteina, :carb_hidr, :lipido, :gei, :terreno

	def initialize(nombre, proteina, carb_hidr, lipido, gei, terreno)
		@nombre, @proteina, @carb_hidr, @lipido, @gei, @terreno = nombre, proteina, carb_hidr, lipido, gei, terreno
	end

	def to_s
		result = ""

		result += nombre + ":\n"
		result += "\tProteínas: " + proteina.to_s + "\n"
		result += "\tCarbohidratos: " + carb_hidr.to_s + "\n"
		result += "\tLípidos: " + lipido.to_s + "\n"
		result += "\tGEI: " + gei.to_s + "\n"
		result += "\tTerreno: " + terreno.to_s + "\n"

		result
	end

	# Devuelve el valor energético del alimento
	def valor_energetico
		(proteina*4+carb_hidr*4+lipido*9).round(2)
	end
end

Node = Struct.new(:value, :next, :prev) do

	def get_head
		if(self.prev==nil)
			self
		elsif(self.prev!=nil)
			self.prev.get_head
		end
	end

	def get_tail
		if(self.next==nil)
			self
		elsif(self.next!=nil)
			self.next.get_tail
		end
	end

	def empty
	        if(self.value==nil)
			true
	        elsif(self.value!=nil)
			false
	        end
	end

	def push_head(value)
		if(empty)
			self.value = value;
		else
			get_head.prev = Node.new(value,get_head,nil)
		end
	end

	def push_tail(value)
		if(empty)
			self.value = value;
		else
			get_tail.next = Node.new(value,nil,get_tail)
		end
	end

	def pop_head
		elim_nodo = self.get_head

		if(self.get_head != self.get_tail)
			get_head.next.prev = nil
		else
			self.value = nil
		end
	end

	def pop_tail
		elim_nodo = self.get_tail

		if(self.get_tail != self.get_head)
			get_tail.prev.next = nil
		else
			self.value = nil
		end
	end
end
