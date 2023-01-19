
# -------------------------
# 1) Class Definition
# -------------------------

# NOTE: class name always have to follow 'CamelCase' convention

class Box
    # code here
end

# ---------------------------------
# 2) Instantion of a Class Object
# ---------------------------------

# For creating an instance of a class the keyword `new` is used

box1 = Box.new
box2 = Box.new

# ---------------------------------
# 3) The initialize Method
# ---------------------------------

# a) Works almost same way as constructor methods in other OOP languages
# b) Useful when class variables want to be initialized at the same time of
#    object creation


class Box
    def initialize(w,h)
        @width, @height = w, h
    end
end

# ---------------------------------
# 4) The to_s Method
# ---------------------------------

# Used to return a string representation of an instantiated object 

class Box
    
    # constructor method
    def initialize(w,h)
        @width, @height = w, h
    end
    
    # define to_s method
    def to_s
        # string formatting of the object.
        "(w:#@width ,h:#@height)"  
    end
end

# create an object
box = Box.new(10, 20)
puts "String representation of box is : #{box}"

# ---------------------------------
# 5) Class Information
# ---------------------------------

# a) class methods can be used to extract information of the type of a class
#    or any instance variable
class Box
    # constructor method
    def initialize(w,h)
        @width, @height = w, h
    end

    def getWidth
        @width
    end
end

box = Box.new(10,10)
puts ("Type of box = #{box.class}")
puts ("Type of box's width = #{box.getWidth.class}")

