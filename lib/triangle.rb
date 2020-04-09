
require "pry"
class Triangle

  def initialize( a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    # create an if statement that takes into account the Triangle inequality theorem
    triangle_inequality = ((@a + @b) <= @c) || ( (@a + @c) <= @b) || ( (@b + @c) <= @a)
    zero_length =  @a == 0 || @b == 0 || @c == 0
    negative_length = @a < 0 || @b < 0 || @c < 0

    if triangle_inequality || zero_length || negative_length
      raise TriangleError
    else
      if @a == @b && @b == @c
        :equilateral
      elsif (@a == @b && @a != @c && @b != @c) || (@b == @c && @b != @a && @c != @a) || (@a == @c && @a != @b && @c != @b)
        :isosceles
      else
        :scalene
      end
    end
  end


  class TriangleError < StandardError

  end



end
