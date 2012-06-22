#!/usr/bin ruby1.9.1
require 'Mazo'
require 'Jugador'
require 'Croupier'
require 'JuegoCtrl'

class Main
	jugadores = Array.new
	puts "digite el numero de jugadores que jugaran de 1 a 6"
	numjugadores = gets.to_i
	numjugadores.times do
		puts "digite el nombre del jugador"
		nombre = gets
		jugadores.push(Jugador.new(nombre))
	end
	jugadores.push(Croupier.new)
	juegoctrl = JuegoCtrl.new(Mazo.new, jugadores)
	juegoctrl.iniciarJuego
end
