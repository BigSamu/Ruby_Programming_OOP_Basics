
# -------------------------
# 1) Instance Variables
# -------------------------

# a) Variable shared between all instances of a class
# b) Only one instance of the variable exist and is accessed by all object
#    instances
# c) Defined prefixing two '@' characters (@@) and must be initialized in class
#    definition

# -------------------------
# 2) Instance Methods
# -------------------------

# a) Method used by a class without the need for creating new instances
# b) Defined using 'def self.methodname()'
# c) Called using only class name -> 'classname.methodname' 

# -------------------------
# EXAMPLE for 1) and 2)
# -------------------------

class Box
    # Initialize our class variables
    @@count = 0
    def initialize(w,h)
        # assign instance variables
        @width, @height = w, h

        @@count += 1
    end

    def self.printCount()
        puts "Box count is : #@@count"
    end
end

# create two object
box1 = Box.new(10, 20)
box2 = Box.new(30, 100)

# call class method to print box count
Box.printCount()