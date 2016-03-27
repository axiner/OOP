class Rover
  attr_accessor :x, :y, :direction
    def initialize(x,y,direction)
      @@x = x
      @@y = y
      @@direction = direction
    end

    def read_instruction(instructions)
      puts "What's your instructions?"
        instructions = gets
          instructions.split(",")
            if instructions.include?("L"||"R")
                instructions.turn("left_right")
                else
                  instructions.move
            end
    end

      def turn(left_right)
        puts "Which direction is the rover moving?"
         left_right = gets

         if direction = "N" && left_right = "L"
           "S"
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

      def move

      end 
end
