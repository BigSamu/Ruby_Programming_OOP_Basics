
# -----------------------
# 1) Method Overriding
# -----------------------

# a) Change behaviour of already created method from parent class
#    in child class
# b) Also referred as Dynamic or Runtime polymorphism

class Box
    # constructor method
    def initialize(w,h)
        @width, @height = w, h
    end
    # instance method
    def getArea
        @width * @height
    end
end

# define a subclass
class BigBox < Box

    # change existing getArea method as follows
    def getArea
        @area = @width * @height
        puts "Big box area is : #{@area}"
    end
end

# create an object
box = BigBox.new(10, 20)

# print the area using overriden method.
box.getArea()

# -----------------------
# 2) Methods Overloading
# -----------------------

# a) Ruby does not support overloading for a methods with same signature and
#    multiple parameters. Example -> sum(a,b), sum(a,b,c), sum(a,b,c,d), etc
# b) However it does support overloading of operators, such as '+','-' or "*", 
#    to perform specific operation
# b) Also referred as Static or Compile time polymorphism

class Box
    # Initialize the width and height
    def initialize(w,h)     
        @width,@height = w, h
    end

    # accessor methods
    def getWidth
        @width
    end
    def getHeight
        @height
    end

    # Define + to do vector addition
    def +(other)       
        Box.new(@width + other.getWidth, @height + other.getHeight)
    end

    # Define unary minus to negate width and height
    def -@           
        Box.new(-@width, -@height)
    end

    # To perform scalar multiplication
    def *(scalar)           
        Box.new(@width*scalar, @height*scalar)
    end

    def getArea
        @area = @width * @height
        puts "Big box area is : #{@area}"
    end
end

box1 = Box.new(10,20)
box2 = Box.new(20,30)
box3 = box1+box2 # equivalent to Box.new(30,50)
box3.getArea() # output: 1500
box4 = box2+(-box1) # equivalent to Box.new(10,10)
box4.getArea() # output: 100
box5 = box1*2 # equivalent to Box.new(10,10)
box5.getArea() # output: 800