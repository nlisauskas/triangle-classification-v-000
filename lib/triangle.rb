class Triangle

  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    if self.side_one + self.side_two + self.side_three != 180 
      raise TriangleError
    elsif self.side_two == self.side_three == self.side_one == 60
      then :equilateral
    elsif self.side_one == self.side_two || self.side_one == self.side_three || self.side_two == self.side_three
      then :isosceles
    else :scalene
    end

  end

  end

end

class TriangleError < StandardError


end
