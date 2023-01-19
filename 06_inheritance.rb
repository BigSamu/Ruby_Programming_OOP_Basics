
# --------------------
# 1) Inheritance
# --------------------

# a) Allows to define class in terms of another class (Parent/Child relationship)
#    (reuse of code functionality)
# b) Relationships:
#    Superclass -> also referred as Base class or Parent class
#    Subclass -> also referred as Derived class or Child class
# c) Syntax for extending a class: 'subclass < superclass'
# d) Ruby does not support multiple levels of inheritance, but instead mixin
#    mixin -> specialized implementation of multiple inheritance in which only
#    the interface portion is inherited.

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

    def initialize(w,h,l)
        super(w, h)
        @length = l
    end

    # add a new instance method
    def printArea
        @area = @width * @height
        puts "Big box area is : #{@area}"
    end
end

# create an object
box = BigBox.new(10, 20, 30)

# print the area
box.printArea()

# --------------------
# 2) Keyword super
# --------------------

# a) Reserved for passing arguments from class's child initializer method to
#    parent class's initializer method.

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

    def initialize(w,h,l)
        super(w, h)
        @length = l
    end

    # add a new instance method
    def printArea
        @area = @width * @height
        puts "Big box area is : #{@area} with length #{@length}"
    end
end

# create an object
box = BigBox.new(10, 20, 30)

# print the area
box.printArea()
