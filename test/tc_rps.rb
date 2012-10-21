require 'rps' # Requerimos la librería
require 'test/unit'

# La clase hereda de Test::Unit::TestCase
class TestRockPaperScissors < Test::Unit::TestCase

	def setup
	end
	
	def teardown
	end
	
	#def test_play
		#assert_equal()
	#end
	
	def correct_answer(x)
		return true if x =~ /There is a tie/
		return true if x =~ /Computer wins; (\w+) defeats (\w+)/ and RockPaperScissors.defeat[$1.to_sym] == $2.to_sym
		return true if x =~ /Well done. (\w+) beats (\w+)/ and RockPaperScissors.defeat[$1.to_sym] == $2.to_sym
	end

	def test_play
		30.times do
			assert correct_answer(RockPaperScissors.play('scissors'))
		end
		30.times do
			assert correct_answer(RockPaperScissors.play('paper'))
		end
		30.times do
			assert correct_answer(RockPaperScissors.play('rock'))
		end
	end
	
	# Cuando se juega mal
	def test_wrong_play
		assert_raises(SyntaxError) {RockPaperScissors.play('tutu')}
	end
	
	#def test_variety
	#	answers = []
		# 20 jugadas.
	#	20.times do
			#answer.push RockPaperScissors.throw # no está este método.
	#	end
	#end

end