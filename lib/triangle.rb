class Triangle

    #### Attributes ####
    attr_accessor :side1, :side2, :side3

    #### Instance Methods ####
    def initialize(side1, side2, side3)
        @side1 = side1
        @side2 = side2
        @side3 = side3
    end

    def kind
        if (@side1 + @side2) <= @side3 || (@side3 + @side2) <= @side1 || (@side1 + @side3) <= @side2 || [@side1,@side2,@side3].any? { |side| side <=0 }
            raise TriangleError
        elsif @side1 == @side2 && @side1 == @side3
            :equilateral
        elsif (@side1 == @side2 && @side1 != @side3) || (@side1 == @side3 && @side1 != @side2) || (@side2 == @side3 && @side1 != @side2)
            :isosceles
        else
            :scalene
        end
    end

    #### Custom Error Method####
    class TriangleError < StandardError

    end
end
