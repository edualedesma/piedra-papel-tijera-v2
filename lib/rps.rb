class RockPaperScissors

	def defeat
		@@defeat
	end
	
	def throws
		@@throws
	end
	
	@@defeat = { rock: :scissors, paper: :rock, scissors: :paper}
	@@throws = @@defeat.keys

	class << self #Todos los métodos son de clase.

	def play()
		#puts "Choose one of #{throws.join(', ')}: "
		player_throw = gets.chomp.to_sym

		raise ScriptError, "You must execute: ''#{$0}'' followed by one of the following '#{throws.join(', ')}'" unless throws.include? player_throw

		computer_throw = throws.sample

		answer =  case player_throw
		when computer_throw 
			"There is a tie"
		when defeat[computer_throw]
			"Computer wins; #{computer_throw} defeats #{player_throw}"
		else
			"Well done. #{player_throw} beats #{computer_throw}"
		end
		#puts answer
	  end
	end # Métodos de clase
end
