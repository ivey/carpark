class Array
  def method_missing(m, *a)
    s = m.to_s
    if [:cons, :setcar, :setcdr].include?(s)
      self.send(s, a)
    elsif s =~ /c[ad]+r/
      o = s[1..-2]
      return self[0].send("c#{o[0..-2]}r".to_sym) if o[-1..-1]=="a"
      return self[1..-1].send("c#{o[0..-2]}r".to_sym) if o[-1..-1]=="d"
      return "failed #{o}"
    else
      return super.method_missing(m, a) unless s =~ /c[ad]+r/
    end
  end

  def cons(a)
    return ([] << a) + self
  end

  def car
    return self.first
  end

  alias head car

  def cdr
    return self[1..-1]
  end

  alias rest cdr

  def nth(n)
    return self[n]
  end

  def nthcdr(n)
    return self[n..-1]
  end

  def setcar(a)
    return self[0] = a
  end

  def setcdr(l)
    return self[1..-1] = l
  end
end
