# -----------------------------
# Self and Class Methods
# -----------------------------

# NOTE:

# a) self keyword -> Depen on the context of usage. It can refers to the instance
#                    of a class or the class itself
# b) @@variable -> refers to a class variable (not instance variable)
# c) def self.[method_name]... -> refers to the class method implemented for the
#                                 class

# I) Swimmable Module
module Swimmable
    def swim
        "Can swim here!"
    end
end

# II) GreenSpace Class -> Parent Class
class GreenSpace
    attr_accessor :name, :num_trees

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
    @@num_rec_centres = 0 #Class attribute
    
    def initialize(name, num_trees, philanthropist)
      super(name, num_trees)
      @philanthropist = philanthropist
      @@num_rec_centres += 1
    end

    def whats_this
        self # here 'self' refers to an instance of the class
    end

    def self.num_rec_centres # here 'self' refers to the class itself
        @@num_rec_centres
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
scadding_court = RecreationCentre.new("DunBat", 25, "Jim Balsillie")


puts RecreationCentre.num_rec_centres # output: 2
puts scadding_court.name # output: "DunBat"
scadding_court.name = "Scadding Court"
puts scadding_court.name # output: "Scadding Court"
puts scadding_court.whats_this # output: #<RecreationCentre:0x00007fc73b9a0060>