class Triangle
  attr_accessor :side_one, :side_two, :side_three
  attr_reader :equilateral, :isosceles, :scalene
  
  def initialize(side_one, side_two, side_three)
    @side_one= side_one
    @side_two= side_two
    @side_three= side_three
  end
  
  def kind
    one = self.side_one
    two = self.side_two
    three = self.side_three
    if one <= 0 || two <= 0 || three <=0 || one + two <= three || two + three <= one || one + three <= two
        raise TriangleError
      elsif one == two && two == three && one == three
        return :equilateral
      elsif one != two && two != three && one != three
        return :scalene
      elsif one == two || two == three || one == three
        return :isosceles
    end
  end
  
  class TriangleError < StandardError
  end
end
