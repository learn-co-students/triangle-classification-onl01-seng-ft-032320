class Triangle
  attr_accessor :length1, :length2, :length3
  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

def valid_sides
    length1.positive? && length2.positive? && length3.positive?
  end 

def valid_lengths 
    length1 + length2 > length3 && length1 + length3 > length2 && length2 + length3 > length1
  end 

  def kind
    if valid_sides == true && valid_lengths == true 
      puts true 
    else 
      raise TriangleError 
    end 
    
    if length1 == length2 && length2 == length3 && length1 == length3
      :equilateral
    elsif length1 != length2 && length2 != length3 && length3 != length1
      :scalene 
    else 
      :isosceles
    end 
  end
  
  
  
  
  
class TriangleError < StandardError
  
end


  
end
