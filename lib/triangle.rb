 
require 'pry'
class Triangle
  attr_reader :side_1, :side_2, :side_3
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def valid?
    sum_one_two = side_1 + side_2
    sum_one_three = side_1 + side_3
    sum_two_three = side_2 + side_3

    if !(sum_one_two > side_3 && sum_one_three > side_2 && sum_two_three > side_1) || (side_1 <= 0 && side_2 <= 0 && side_3 <= 0)
      raise TriangleError
    end
  end

  
  def kind
     valid?
       if side_1 == side_2 && side_3 == side_2
        return :equilateral
      elsif side_1 == side_2 || side_1 == side_3 || side_2 == side_3
        return :isosceles
      else
        return :scalene
      end
  end
  
  class TriangleError < StandardError

  end
  
end


