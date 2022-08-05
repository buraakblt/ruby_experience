require 'forwardable'

class Vehicle
    def entrance
        puts "This is a vehicle!"
    end
end

class Engine
    def start
        puts "Engine is start."
    end

    def stop
        puts "Engine is stop."
    end
end

class GasolineEngine < Engine
end

class DieselEngine < Engine
end

class Car < Vehicle
    extend Forwardable

    def_delegators :@engine, :start, :stop

    def initialize
        @engine = GasolineEngine.new
    end

    def sunday_drive
        puts "Engine type: #{@engine.class}"
        start

        stop
    end

    def switch_to_diesel
        @engine = DieselEngine.new
    end
end

def main
    car = Car.new
    car.entrance
    car.sunday_drive
    car.switch_to_diesel
    car.sunday_drive
end

main