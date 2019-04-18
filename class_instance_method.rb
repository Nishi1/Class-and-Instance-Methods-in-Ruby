=begin
Class methods are methods that are called on a class and instance methods are methods that are called on an instance of a class. 
Here is a quick example:
=end


class Foo
  def self.bar
    puts 'class method'
  end
  
  def baz
    puts 'instance method'
  end
end

Foo.bar # => "class method"
Foo.baz # => NoMethodError: undefined method ‘baz’ for Foo:Class

Foo.new.baz # => instance method
Foo.new.bar # => NoMethodError: undefined method ‘bar’ for #<Foo:0x1e820>
