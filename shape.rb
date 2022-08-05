class Triangular
    attr_reader :floor, :height
    def initialize (floor, height)
        @floor = floor
        @height = height
    end
    def area
        return (@floor * @height)/2
    end
end

class Rectangular
    attr_reader :floor, :height
    @count = 0

    class << self
        attr_accessor :count
    end

    def initialize (floor, height)
        @floor = floor
        @height = height

        self.class.count += 1
    end

    def area
        return @floor * @height
    end

end

class Circle
    attr_reader :radius
    def initialize (radius)
        @radius = radius
    end
    def area
        return (radius ** 2) * 3,14
    end
end

class Square < Rectangular
    attr_reader :length
    @count = 0

    def initialize(length)
        @length = length

        super(length, length)
    end
end

def main
    rectangulars = []

    rectangulars << Rectangular.new(1, 2)
    rectangulars << Rectangular.new(1, 2)
    rectangulars << Rectangular.new(1, 2)

    puts Rectangular.count

    squares = []
    squares << Square.new(1)
    squares << Square.new(2)

    puts Square.count
    puts Rectangular.count
end
main