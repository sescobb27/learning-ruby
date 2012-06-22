#!/usr/bin ruby1.9.1
require 'Mano'
class Jugador

	attr_accessor :estado, :ganados
	attr_reader :mano, :nombre
	@@Activo = 0
	@@Plantado = 1
	@@Descalificado = 2
	
	def initialize(nombre)
		@nombre = nombre
		@estado = @@Activo
		@ganados = 0
		@mano = Mano.new
	end
#	self.Plantado
	def Jugador.Plantado
		@@Plantado
	end
#	self.Descalificado
	def Jugador.Descalificado
		@@Descalificado
	end
	
	def isOut?
		if(estado == @@Descalificado)
			true
		else
			false
		end
	end
	
	def addCarta(carta)
		mano.add(carta)
	end
	
	def getCartas
		@mano.mano.each do |carta|
			puts carta.valor.to_s + " " + carta.pinta
		end
	end
	
	def valorarMano
		suma = 0
		(@mano.mano).each do |carta|
			suma += carta.valorCarta
		end
		suma
	end
end
