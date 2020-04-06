class Triangle
  attr_accessor :equilateral, :isosceles, :scalene, :one, :two, :three 
  #initialize triangle with sides
  def initialize(one, two, three)
    @one = one 
    @two = two 
    @three = three
  end 

  def kind
    if valid? 
      true
    else 
      raise TriangleError
    end
   
    if one == two && two == three && one == three
      :equilateral
    elsif one != two && two != three && one != three
      :scalene 
    else 
      :isosceles
    end 
  end

  def valid?
    if (one.positive? && two.positive? && three.positive?) && (one + two > three && one + three > two && two + three > one)
      true 
    else 
      false
    end
  end
  
  class TriangleError < StandardError
    # triangle error code
    def message
      "The triangle side lengths you entered are not valid."
    end 
  end
end
