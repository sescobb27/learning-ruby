#!/usr/bin ruby1.9.1
require 'Carta'

class Mazo

	attr_reader :mazo
	
	def initialize
		@mazo = Array.new
		for i in 1..4 do
			for j in 1..13 do
				if(j==1)then @mazo.push(Carta.new('A',i))
				elsif(j==11)then @mazo.push(Carta.new('J',i))
				elsif(j==12)then @mazo.push(Carta.new('Q',i))
				elsif(j==13)then @mazo.push(Carta.new('K',i))
				else @mazo.push(Carta.new(j,i))end
			end
		end
	end
	
	def repartirCarta
		pos = rand(@mazo.size)
		carta = @mazo.delete_at(pos)
	end
	
	def print
		for i in 0...@mazo.size do
			puts @mazo[i].pinta + @mazo[i].valor.to_s() + " " + @mazo[i].valorCarta.to_s
		end
	end
end

#mazo = Mazo.new
#mazo.print
