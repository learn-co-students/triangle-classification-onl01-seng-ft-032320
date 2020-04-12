class Triangle
  
  attr_accessor :side1, :side2, :side3, :equilateral, :isosceles, :scalene
  
  def initialize(side1, side2, side3)
    side1 = @side1
    side2 = @side2
    side3 = @side3
  end
  
  def kind
    if self.valid? != true 
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    elsif @side1 == @side2 && @side2 == @side3 
      :equilateral
    elsif @side1 == @side2 or @side1 == @side3 or @side2 == @side3
      :isosceles
    elsif @side1 != @side2 && @side1 != @side3 && @side2 != @side3
      :scalene
    end
  end
  
  def valid?
    if (@side1 + @side2 > @side3) || (@side1 + @side3 > @side2) || (@side2 + @side3 > @side1) && @side1 >= 0 && @side2 >= 0 && @side3 >= 0
    end
  end
  
  class TriangleError < StandardError
    def message
      "Invalid Triangle"
    end
  end

end
