#
#  carpark/lib/test_helper.rb
#
#  Created by Bryce Kerley on 2006-11-08.
#  This code is public domain.
#
#  Subversion info:
#  $Id: test_helper.rb 1 2007-01-01 19:20:16Z bkerley $

$:.unshift File.dirname(__FILE__)
$:.unshift File.join(File.dirname(__FILE__), '..', 'lib')
require 'test/unit'
require 'lib/carpark.rb'
