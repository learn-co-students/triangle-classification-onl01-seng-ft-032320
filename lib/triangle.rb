class Triangle
  # write code here
  attr_accessor :one_side, :two_side, :three_side
  
  def initialize(one_side, two_side, three_side)
    @one_side = one_side
    @two_side = two_side
    @three_side = three_side
    
  end
  
  def kind
    if (@one_side <= 0) || (@two_side <= 0) || (@three_side <= 0)
      raise TriangleError
    elsif (@one_side + @two_side <= @three_side) || (@one_side + @three_side <= @two_side) || (@two_side + @three_side <= @one_side)
      raise TriangleError
    else
      if (@one_side == @two_side) && (@two_side == @three_side)
        :equilateral
      elsif (@one_side == @two_side) || (@two_side == @three_side) || (@one_side == @three_side)
        :isosceles
      elsif (@one_side != @two_side) && (@two_side != @three_side) && (@one_side != @three_side)
        :scalene
      end
    end
  end
  
  class TriangleError < StandardError
    puts "The sides you put in are invalid. Please try again."
  end
  
end
