require 'rps' # Requerimos la librería
require 'test/unit'

# La clase hereda de Test::Unit::TestCase
class TestRockPaperScissors < Test::Unit::TestCase

	def setup
	end
	
	def teardown
	end
	
	def test_play
		
	end
	
	# Cuando se juega mal
	def test_wrong_play
		assert_raises(SyntaxError) {RockPaperScissors.play('tutu')}
	end
	
	def test_variety
		answers = []
		
		# 20 jugadas.
		20.times do
			#answer.push RockPaperScissors.throw # no está este método.
		end
	end

end