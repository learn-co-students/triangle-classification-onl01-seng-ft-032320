class Triangle
  attr_accessor :l1, :l2, :l3

  def initialize(l1,l2,l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end

  def triangle_inequality
    l1 + l2 > l3 && 
    l2 + l3 > l1 && 
    l1 + l3 > l2
  end

  def not_zero_and_negative
    (l1 > 0 && l2 > 0 && l3 > 0 ) && 
    (!l1.negative? && !l2.negative? && !l3.negative?)
  end

  def valid?
    triangle_inequality && not_zero_and_negative
  end

  def scalene?
    (l1 != l2 && l2 != l3 && l1 != l3)
  end

  def isosceles?
    (l1 == l2 && l1 != l3) ||
    (l2 == l3 && l1 != l2) ||
    (l1 == l3 && l1 != l2)
  end

  def equilateral?
    l1 == l2 && l2 == l3
  end

  def kind
    if !valid?
      begin 
        raise TriangleError
      end
    else
      if valid? && scalene?
        :scalene
      elsif valid? && isosceles?
        :isosceles
      elsif valid? && equilateral?
        :equilateral
      end
    end
  end

  class TriangleError < StandardError
  end
end
