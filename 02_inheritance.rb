
# -------------------------
# Inheritance Example
# -------------------------

# NOTE:
# a) '<' denote a subclass relationship

# I) GreenSpace Class -> Parent Class
class GreenSpace
    attr_reader :name, :num_trees

    def initialize(name, num_trees)
        @name = name
        @num_trees = num_trees
    end
end

# II) CityPark Class -> Subclass (child of GreenSpace class)
class CityPark < GreenSpace; end

# III) Forest Class -> Subclass (child of GreenSpace class)
class Forest < GreenSpace; end

# -----------------
# Driver Code
# -----------------

high_park = CityPark.new("High Park", 5000)
durham_forest = Forest.new("Durham Forest", 125000)
dufferin_park = CityPark.new("Dufferin Park", 2000)

puts high_park.name # output: "High Park"
puts high_park.num_trees # output: 5000
puts durham_forest.name # output: "Durham Forest" 
puts durham_forest.num_trees # output: 125000
puts dufferin_park.num_trees # output: 2000