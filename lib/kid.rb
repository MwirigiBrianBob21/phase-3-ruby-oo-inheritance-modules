require_relative './dance_module'
require_relative './meta_dancing_module'
require_relative './fancy_dance'

class Kid
    include Dance
    extend MetaDancing
    # :: references the parent and child relationship of the nested modules
    extend FancyDance::ClassMethods
    include FancyDance::InstanceMethods 

attr_accessor :name

    def initialize(name)
        @name = name
    end
end

buster = Kid.new("angelinas")
puts buster.take_a_bow
puts buster.jump
