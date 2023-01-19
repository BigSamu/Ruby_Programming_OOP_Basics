
# -------------------------
# 1) Instance Variables
# -------------------------

# a) Kind of class attributers
# b) Accesed using the '@' operator within the class, but not outside
# c) For public access of these variables, accessor methods are used

class Box
    def initialize(w,h)
        # assign instance variables
        @width, @height = w, h
    end
end
# 'width' adn 'height' -> class methods

# -------------------------
# 2) Instance Methods
# -------------------------

# a) Defined using any other method -> using 'def' keyword
# b) Functionality not limited to access instance variables but also a lot more

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

# create an object
box = Box.new(10, 20)

# call instance methods
a = box.getArea()

puts "Area of the box is : #{a}"