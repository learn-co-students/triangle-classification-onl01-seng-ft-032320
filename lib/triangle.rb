class Triangle

attr_accessor :s1, :s2, :s3, :kind

  def initialize(s1, s2, s3)
    @s1 = s1 
    @s2 = s2
    @s3 = s3
    
  end

  def kind
    if (s1 * s2 * s3) == 0 || (s1+ s2) <= @s3 || (s2 + s3) <= s1 || (s3 + s1) <= s2
        
      raise TriangleError

    end
      
    if s1 == s2 && s1 == s3 
      :equilateral

    elsif s1 == s2 || s2 == s3 || s1 == s3
      :isosceles

    else
      :scalene
    
      
      
    
      
    end
  end

    
  class TriangleError < StandardError
# def message 
#   # puts "not a triangle"
end
end