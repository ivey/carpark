#
#  carpark/lib/carpark.rb
#
#  Created by Bryce Kerley on 2006-11-08.
#  This code is public domain.
#
#  Subversion info:
#  $Id: carpark.rb 177 2006-11-13 01:56:06Z bkerley $

class Array
  def method_missing(m, *a)
    s = m.to_s
    return super.method_missing(m, a) unless s =~ /c[ad]+r/
    o = s[1..-2]
    
    return self[0].send("c#{o[0..-2]}r".to_sym) if o[-1..-1]=="a"
    return self[1..-1].send("c#{o[0..-2]}r".to_sym) if o[-1..-1]=="d"
    
    return "failed #{o}"
  end
  
  def car
    return self.first
  end
  
  def cdr
    return self[1..-1]
  end
end
