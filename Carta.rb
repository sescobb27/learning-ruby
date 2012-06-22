#!/usr/bin ruby1.9.1

class Carta
	
	attr_reader :valor, :pinta
	@@pintas = {:p => "picas", :d => "diamantes", :t => "treboles", :c => "corazones"}
	def initialize(valor, pinta)
		@valor = valor
		case pinta
		when 1
			@pinta = @@pintas[:d]
		when 2
			@pinta = @@pintas[:c]
		when 3
			@pinta = @@pintas[:p]
		when 4
			@pinta = @@pintas[:t]
		end
	end
	
	def valorCarta
		if(valor.eql?('A')) then 11
		elsif(valor.eql?('J')) then 10
		elsif(valor.eql?('Q')) then 10
		elsif(valor.eql?('K')) then 10
		else valor
		end
	end
end
