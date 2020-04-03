class Triangle
  # write code here
  def initialize(side1, side2, side3)
    @a = side1.to_f 
    @b = side2.to_f  
    @c = side3.to_f
  end

  def kind 
    if valid?
      if @a == @b && @b == @c
        :equilateral
      elsif @a == @b || @b == @c || @c == @a
  
        :isosceles
      else
        :scalene 
      end 
    else
      raise TriangleError
    end 
  end 

  def valid?
    triangle_sides = [@a,@b,@c].sort
    if triangle_sides.any?{|side| side <= 0}
      status = false 
    elsif triangle_sides.any?{|side| !side.is_a? Float}
      status = false 
    elsif triangle_sides[2] >= (triangle_sides[0] + triangle_sides[1])
      status = false
    else 
      status = true 
    end 
  end 


  class TriangleError < StandardError
  end 
end
