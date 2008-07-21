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
