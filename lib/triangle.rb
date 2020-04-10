require 'pry'

class Triangle
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def invalid?
    if(@side1 <= 0) || (@side2 <= 0) || (@side3 <= 0)
      true
    elsif (@side1 + @side2 <= @side3) || (@side1 + @side3 <= @side2) || (@side2 + @side3 <= @side1)
      true
    end
  end
    
  def kind
    if invalid?
      raise TriangleError
    else
      if (@side1 == @side2) && (@side2 == @side3)
        :equilateral
      elsif (@side1 == @side2) || (@side2 == @side3) || (@side3 == @side1)
        :isosceles
      elsif (@side1 != @side2) && (@side2 != @side3) && (@side3 != @side1)
        :scalene
      end
    end
  end
  
  class TriangleError < StandardError
    def message
      "The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. This is a principle known as the triangle inequality. Further, each side must be larger than 0."
    end
  end
end
