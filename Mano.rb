#!/usr/bin ruby1.9.1
require 'Carta'
class Mano
	attr_accessor :mano
	
	def initialize
		@mano = Array.new
	end
	
	def add(carta)
		@mano.push(carta)
	end
end
