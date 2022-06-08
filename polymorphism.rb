=begin
polymorphism means having many forms.
In Ruby we can achieve polymorphism using method overriding.
In Polymorphism, Ruby invokes the actual method during running of the program.
One way of achieving polymorphism is with inheritance. In this tutorial let us see an example via Inheritance
Method overriding is concept where even though the method name and parameters passed is similar, the behavior is different based on the type of object.
=end

class Animal
    def makeNoise
        puts "HurrDurr"
    end
end

class Cat < Animal
    def makeNoise
        puts "Meeaaowwww"
    end
end

class Dog < Animal
    def makeNoise
        puts "WoofWoof"
    end
end

animal = Animal.new
animal.makeNoise()

animal = Cat.new
animal.makeNoise()

animal = Dog.new
animal.makeNoise()

=begin
Output:
HurrDurr
Meeaaowwww
WoofWoof
=end
