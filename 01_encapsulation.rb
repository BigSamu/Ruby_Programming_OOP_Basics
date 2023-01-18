
# -------------------------
# Encapsulation Example
# -------------------------

# NOTE:For instance vavriables:

# a) attr_reader: variable -> create instance variable only accesible for 
#                             reading purposes (no getter method needed)
# b) attr_writer: variable -> create instance variable only accesible for 
#                             writing purposes (no setter method needed)
# c) attr_accesor: variable -> create instance variable accesible for reading 
#                              and writting purposes (no getter and setter 
#                              method needed)
# d) @variable -> create private instance variable onot accesible for reading,
#                 unless getter and setter methods are implemented


# I) CityPark Class
class CityPark
    # 1) Class Attributes
    attr_reader :name, :num_trees  

     # 2) Class Constructor
    def initialize(name, num_trees)
        @name = name
        @num_trees = num_trees
    end
end

# II) Forest Class
class Forest
    # 1) Class Attributes
    attr_reader :name, :num_trees

    # 2) Class Constructor
    def initialize(name, num_trees)
        @name = name
        @num_trees = num_trees
    end
end

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