require "prc5/version"
# Programa para el manejo de fraccioones

require 'test/unit'


class Fracion

	#variables
	@numerador = 0
	@denominador = 0

	#constructor 
	def initialize()
	end


	def recogida_datos()
	puts "Ingrese el numerador"
	@numerador = gets().to_i
	puts "Ingrese el denominador"
	@denominador = gets().to_i
	end

	def	mostrar()
	puts @numerador
	puts "-"
	puts @denominador

	end

	# Metodos get y set
	def getNum()
		@numerador
	end

	def getDen()
		@denominador
	end

	def setNum(numero)
		@numerador = numero
	end


	def setDen(numero)
		@denominador = numero
	end
	####################

	def multiplicacion(num1,num2)
		a_num = num1.getNum
		b_num = num2.getNum
		a_den = num1.getDen
		b_den = num2.getDen
		@numerador = a_num * b_num
		@denominador = a_den * b_den
	end


	def resta(num1,num2)
		a_num = num1.getNum
		b_num = num2.getNum
		a_den = num1.getDen
		b_den = num2.getDen
		@denominador = a_den * b_den
		@numerador = (a_num * b_den)-(a_den*b_num)

	end

		def suma(num1,num2)
		a_num = num1.getNum
		b_num = num2.getNum
		a_den = num1.getDen
		b_den = num2.getDen
		@denominador = a_den * b_den
		@numerador = (a_num * b_den)+(a_den*b_num)

	end

	def division(num1, num2)
		a_num = num1.getNum
		b_num = num2.getNum
		a_den = num1.getDen
		b_den = num2.getDen
		@numerador = a_num * b_den
		@denominador = a_den * b_num
	end


	# Metodo para simplificar una fraccion, trabaja sobre el objeto fracion que lo llama
	# y consiste en comprobar si numerador y denominador son divisibles por el mismo
	# numero, en caso de ser así realiza la operacion y posteriormente comienza las 
	# comprobaciones de nuevo hasta que deja de ser reducible.

	/
		Problema detectado con los siguientes valores: 8,9  y 9,8, despues del primer
		resultado, nos queda 72,72 y a la hora de simplificar lo deja en 3,3 cuando 
		deberia dejarlo en 1,1. "Comprobar los restantes valores con estas cifras"
	/
	
	def simplificar()
		i = 2
		
		while (i <= @numerador)
			if(@numerador % i == 0 and @denominador % i == 0)
				@numerador = @numerador / i
				@denominador = @denominador / i
			end
			i += 1
		end
	end
end
