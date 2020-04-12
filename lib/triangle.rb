class Triangle
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validate_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def validate_triangle
    if (a + b <= c) || (a + c <= b) || (b + c <= a) || (a <= 0) || (b <= 0) || (c <= 0)
      # begin
        raise TriangleError
      # rescue TriangleError => error
          # puts error.message
      # end
    end
  end


class TriangleError < StandardError
  puts "error"
end

end