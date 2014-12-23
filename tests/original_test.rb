#!/usr/bin/env ruby

require_relative '../lib/carpark'

class CarparkTest < Test::Unit::TestCase
	def test_cons
		assert_equal [1, 2, 3].cons(0), [0, 1, 2, 3] 
	end

	def test_car
		assert_equal [1, 2, 3].car, 1
	end
	
	def test_cdr
		assert_equal [1, 2, 3].cdr, [2, 3]
	end
	
	def test_cadr
		assert_equal [1, 2, 3].cadr, 2
	end
	
	def test_cdar
		assert_equal [[1, 2], 3].cdar, [2]
	end

	def test_nth
		assert_equal [1, 2, 3].nth(0), 1
		assert_equal [1, 2, 3].nth(1), 2
		assert_equal [1, 2, 3].nth(2), 3
		assert_equal [1, 2, 3].nth(3), nil
	end

	def test_nthcdr
		assert_equal [1, 2, 3].nthcdr(0), [1, 2, 3]
		assert_equal [1, 2, 3].nthcdr(1), [2, 3]
		assert_equal [1, 2, 3].nthcdr(2), [3]
		assert_equal [1, 2, 3].nthcdr(3), []
	end

	def test_setcar
		array = [1, 2, 3]
		array.setcar(0)
		assert_equal array, [0, 2, 3]
	end

	def test_setcdr
		array = [1, 2, 3]
		array.setcdr([4, 5])
		assert_equal array, [1, 4, 5]
	end
end
