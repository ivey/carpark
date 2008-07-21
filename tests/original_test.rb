#!/usr/bin/env ruby
require File.join(File.dirname(__FILE__), 'test_helper')

class CarparkTest < Test::Unit::TestCase
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
end
