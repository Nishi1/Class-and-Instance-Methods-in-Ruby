=begin
Nested classes in Ruby Implementation
=end
class Drawing
  def self.what_am_i #  We can also write Drawing.what_am_i
    "This is a main class method"
  end

  class Triangle
    def what_am_i
      "This is a triangle class method"
    end
  end

  class Circle
    def what_am_i
      "This is a circle class method"
    end
  end
end

data = Drawing.what_am_i
puts data

obj = Drawing::Triangle.new
puts obj.what_am_i

obj = Drawing::Circle.new
puts obj.what_am_i

=begin
Output
This is a main class method
This is a triangle class method
This is a circle class method
=end
