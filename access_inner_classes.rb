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

a = Drawing.what_am_i
puts a

a = Drawing::Triangle.new
puts a.what_am_i

a = Drawing::Circle.new
puts a.what_am_i

=begin
Output
This is a main class method
This is a triangle class method
This is a circle class method
=end
