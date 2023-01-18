# -------------------------
# Modules Example
# -------------------------

# NOTE: 
# a) Modules are ruby solution to achieve multiple inheritance
# b) Modules vs Inheritance -> use the 1st for "can-do" relationships
#                           -> use the 2nd for "is-a" relationships
#                           -> Example: A City Park is a Green Space (inheritance)
#                                       and you can go to swim ther (modules)
# c) By convention module naming is appended with the "-able" suffix

# I) Swimmable Module
module Swimmable
    def swim
        "Can swim here!"
    end
end

# II) GreenSpace Class -> Parent Class
class GreenSpace
    attr_reader :name, :num_trees

    def initialize(name, num_trees)
        @name = name
        @num_trees = num_trees
    end
end

# III) CityPark Class -> Subclass (child of GreenSpace class) and also Parent 
#                     -> Class (of RecreationCentre Class)
class CityPark < GreenSpace; end

# IV) RecreationCentre Class -> Subclass (child of CityPark class)
class RecreationCentre < CityPark
    attr_reader :philanthropist
    include Swimmable
    
    def initialize(name, num_trees, philanthropist)
      super(name, num_trees)
      @philanthropist = philanthropist
    end
  end

# V) Forest Class -> Subclass (child of GreenSpace class) and also Parent 
#                    -> Class (of Lake Class)
class Forest < GreenSpace; end

# VI) Lake Class -> Subclass (child of Forest class)
class Lake < Forest
    include Swimmable
  end

# -----------------
# Driver Code
# -----------------

dufferin_park = CityPark.new("Dufferin Park", 2000)
wallace_emerson = RecreationCentre.new("Wallace Emerson", 2, "Joe Beef")

puts dufferin_park.num_trees # output: 2000
puts wallace_emerson.num_trees # output: 2
puts wallace_emerson.swim # output: "Can swim here!""
# puts dufferin_park.swim # output: NoMethodError => undefined method 'swim' for CityPark...
#                           for CityPark... (line commented to avoid error)
puts wallace_emerson.philanthropist # output: "Joe Beef"