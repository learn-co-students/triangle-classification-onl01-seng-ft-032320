class Triangle 
  attr_accessor :a, :b, :c 
  
  def initialize(a, b, c)
    @a = a 
    @b = b 
    @c = c 
  end
  

    # Triangle.kind - Instance method that returns the triangle's type as a symbol
    
    # There are three types: 
    #          * equilateral (all sides are equal)
    #          * isosceles (two of the three sides are equal)
    #          * scalene (no sides are equal)
    #
    # Something to keep in mind is triangle inequality: 
    # the sum of any two sides is always greater than the third 
    
    # If a given Triangle object doesn't satisfy the principle of inequality is not a valid triangle. Therefore, it should raise a custom error called TriangleError (derivative of Standard Error). 
    
    # Also, a triangle is not valid if any of the three sides are less than or equal to zero. Therefore, that should also raise a TriangleError. 

    
  def kind 
    
    if(a > 0 && b > 0 && c > 0)
      if(self.triangle_inequality?)
        if(self.equilateral?)
          :equilateral 
        elsif(self.isosceles?)
          :isosceles 
        else 
          :scalene
        end
      else 
          raise TriangleError
      end 
    else 
        raise TriangleError
    end
  end 
  
  class TriangleError < StandardError 
    # triangle error code 
    def message 
      "Invalid Triangle. Either doesn't satisfy triangle_inequality or one of the sides is less than or equal to zero."
    end
  end
  
  def triangle_inequality? 
    (a + b > c && a + c > b && b + c > a) ? true : false
  end
  
  def equilateral?
    (a == b && a == c) ? true : false
  end
  
  def isosceles?
    (a == b || a == c || b == c) ? true : false
  end
end