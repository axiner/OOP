class Rover
  attr_accessor :x, :y, :direction
    def initialize(x,y,direction)
      @@x = x
      @@y = y
      @@direction = direction
    end

      def turn(left_right)
        puts "Which direction is the rover moving?"
         left_right = gets

         if direction = "N" && left_right = "L"
           "W"
         elsif direction = "N" && left_right = "R"
           "E"
         elsif direction = "E" && left_right = "L"
           "N"
         elsif direction = "E" && left_right = "R"
           "S"
         elsif direction = "S" && left_right= "L"
           "E"
         elsif direction = "S" && left_right = "R"
           "W"
         elsif direction = "W" && left_right = "L"
           "S"
         else direction = "W" && left_right = "R"
           "N"
           end

      end
end

rover1 = Rover.new(1,2,"N")
rover1.turn("L")
