class Triangle
  attr_accessor :length1, :length2, :length3, :triangle
  
  def initialize(length1, length2, length3)
    
    @length1 = length1
    @length2 = length2
    @length3 = length3
    
  end

  def valid?
    if (length1 > 0 && length2 > 0 && length3 > 0) && (length1 + length2 > length3 && length1 + length3 > length2 && length2 + length3 > length1)
      true
    else
      false
    end
  end
  
  def kind
    
    if valid?
      if
          length1 == length2 && length2 == length3
          :equilateral
        elsif
          length1 == length2 && length2 != length3 || length2 == length3 && length1 != length2 || length1 == length3 && length1 != length2
          :isosceles
        else
          :scalene
      end
    else
    
      raise TriangleError
    end
  end
    
    class TriangleError < StandardError
      def message
        "Please use a number greater than 0"
      end
    end
  
end

# wants a TriangleError
#wants a raise error

# knows that triangles with no size are illegal (FAILED - 1)
#   knows that triangles with negative sides are illegal (FAILED - 2)
#   knows that triangles violating triangle inequality are illegal (FAILED - 3)
#   knows that triangles violating triangle inequality are illegal 2 (FAILED - 4)
#   knows that triangles violating triangle inequality are illegal 3 (FAILED - 5)