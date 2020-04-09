class Triangle
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    if (side_1 <= 0 || side_2 <= 0 || side_3 <= 0) || ((side_1 + side_2) <= side_3 || (side_1 + side_3) <= side_2 || (side_2 + side_3) <= side_1)
      begin
        raise TriangleError
      end
    else
      @side_1 = side_1
      @side_2 = side_2
      @side_3 = side_3
    end
  end




  def kind
    if @side_1 == @side_2 && @side_1 == @side_3
      :equilateral
    elsif @side_1 == @side_2 && @side_1 != @side_3
      :isosceles
    elsif @side_1 == @side_3 && @side_1 != @side_2
      :isosceles
    elsif @side_2 == @side_3 && @side_2 != @side_1
      :isosceles
    elsif @side_1 != @side_2 && @side_1 != @side_3 && @side_2 != @side_3
      :scalene
    end
  end

  class TriangleError < StandardError
  end

end
