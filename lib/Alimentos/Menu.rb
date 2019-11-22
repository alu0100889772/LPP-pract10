require "Alimentos/version"

class Menu
	attr_accessor :menu

	def initialize()
		@menu = Lista.new
	end
	
	def add(arrayAlimentos)
		if arrayAlimentos.is_a?(Array)
			for alimento in arrayAlimentos do
				if alimento.is_a?(Alimento)
					@menu.push_tail(alimento)
				end
			end
		end
	end

	def menu_size
		return @menu.size
	end

	def erase
		@menu = Lista.new
	end
end
