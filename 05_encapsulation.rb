
# ----------------------------------
# 1) The accesor & setter Methods
# ----------------------------------

# a) To access a variable outside the class a accessor method has to be defined
#    (also known as getter method) -> For example: 'def getVariable'...
# b) To set a variable outside the class a setter method has to be defined
#    -> For example: 'def setVariable' ...

class Box
    # constructor method
    def initialize(w,h)
        @width, @height = w, h
    end

    # accessor methods
    def getWidth
        @width
    end
    def getHeight
        @height
    end

    # setter methods
    def setWidth=(value)
        @width = value
    end
    def setHeight=(value)
        @height = value
    end
end

# create an object
box = Box.new(10, 20)

# use accessor methods
x = box.getWidth()
y = box.getHeight()

puts "Width of the box is : #{x}"
puts "Height of the box is : #{y}"

# use setter methods
box.setWidth = 30
box.setHeight = 50

# use accessor methods
x = box.getWidth()
y = box.getHeight()

puts "Width of the box is : #{x}"
puts "Height of the box is : #{y}"

# ----------------------------------------------------------
# 2) The attr_reader, attr_writter & attr_accesor Methods
# ----------------------------------------------------------


# a) Ruby also provides getter and setter methods when declaring instance
#    variables
# b) attr_reader -> creates only a reader method (no getter method neeeded)
# c) attr_writer -> creates only a writer method (no setter method neeeded)
# d) attr_accessor -> creates a reader and writer method (no getter and setter
#                     methods neeeded)

puts "-"*50

class Box
    ## Setter and Getter for width and height 
    attr_accessor :width, :height

    ## Getter for width and height
    # attr_reader :width, :height

    # Setter for width and height
    # attr_writer :width, :height

    # constructor method
    def initialize(w,h)
        @width, @height = w, h
    end
end

# create an object
box = Box.new(10, 20)

# use get width and height
x = box.width
y = box.height

puts "Width of the box is : #{x}"
puts "Height of the box is : #{y}"

# use set width and height
box.width = 30
box.height = 50

# use get width and height
x = box.width
y = box.height

puts "Width of the box is : #{x}"

# ----------------------------------
# 3) Access Control
# ----------------------------------

# a) Public Methods -> can be calle by anyone outside the class. All methods are
#                      public by default except the initialize method
# b) Private methods -> can be only be called internally in the class
# c) Protected Methods -> can be called only by objects of the defining class
#                         and its subclasses

puts "-"*50

class Box
    # constructor method
    def initialize(w,h)
        @width, @height = w, h
    end

    # instance method by default it is public
    def getArea
        getWidth() * getHeight()
    end

    # define private accessor methods
    def getWidth
        @width
    end
    def getHeight
        @height
    end
    # make them private
    private :getWidth, :getHeight

    # instance method to print area
    def printArea
        @area = getWidth() * getHeight()
        puts "Big box area is : #{@area}"
    end
    # make it protected
    protected :printArea
end

# create an object
box = Box.new(10, 20)

# call instance methods
a = box.getArea()
puts "Area of the box is : #{a}"

# try to call private and protected methods
# box.getHeight # output: NoMethodError -> in `<main>': private method ...
#                (line commente to avoid error)

# box.printArea() # output: NoMethodError -> in `<main>': protected method ...
#                 (line commente to avoid error)

# ---------------------
# 4) Keyword self
# ---------------------

# a) Reserved word for calling the object (specific instance of a class)
#    -> used to call methods or variabls inside the class
# b) Also it can refers to the itself, when a class is called

# Example of usage located at -> ./examples/04_self_and_class_methods.rb

