#Desafío Cartas

class Carta
	attr_accessor :numero, :pinta
	def initialize(numero, pinta)
		@numero = numero
		@pinta = pinta
	end
end

numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K"]
pinta = ["Córazon", "Diamante", "Picas", "Trebol"]

opcion = ''
while opcion != 'Salir'
	puts "Menú"
	puts "\n"
	puts "Ingresa una de las siguientes opciones:
	1) Ingrese 'Jugar' para Generar 5 cartas al azar
	2) Ingrese 'Mostrar' para mostrar las 5 cartas en pantalla
	3) Ingrese 'Salir' salir del Sistema"
	puts "\n"
	
	opcion = gets.chomp.downcase
	
	case opcion
		when "jugar"
			arr_cartas = []
			5.times do
				aleatorio = Carta.new(numeros.sample, pinta.sample)
				arr_cartas << aleatorio
			end
			system("clear")
			puts "5 Cartas fueron generadas correctamente!!!!"
			puts "\n"
			
		when "mostrar"
			system("clear")
			puts "Las 5 cartas al azar son:"
			arr_cartas.each do |element|
				puts "\n #{element.numero} de #{element.pinta}"
			end 
				puts "\n"
				
		when "salir"
			exit   
		end
	
end