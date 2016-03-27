class Rover
  attr_accessor :x, :y, :direction
    def initialize(x,y,direction)
      @x = x
      @y = y
      @direction = direction
    end

    def read_instruction(instructions)
      puts "What are your instructions?"
        instructions = gets.split(//)
        instructions.each do |motion|
            if motion == "L"
              self.turn("left_right")
            elsif motion == "R"
                self.turn("left_right")
                else
                  self.move
              end
         end
    end

      def turn(left_right)
         if @direction == "N" && left_right == "L"
           @direction = "W"
         elsif @direction == "N" && left_right == "R"
           @direction = "E"
         elsif @direction == "E" && left_right == "L"
           @direction = "N"
         elsif @direction == "E" && left_right == "R"
           @direction = "S"
         elsif @direction == "S" && left_right== "L"
           @direction = "E"
         elsif @direction = "S" && left_right == "R"
           @direction = "W"
         elsif @direction = "W" && left_right == "L"
           @direction = "S"
         else @direction = "W" && left_right == "R"
           @direction = "N"
      end
    end

      def move
      if @direction == "N" then @y = y + 1
      elsif @direction == "E" then @x = x + 1
      elsif @direction == "S" then @y = y - 1
      elsif @direction == "W" then @x = x - 1
      else
        puts "Eh?"
      end
      end


      def final_position
        puts "#{@x} #{@y} #{@direction} "
      end

end

rover1 = Rover.new(1,2,"N")
rover1.read_instruction("instructions")
rover1.final_position

rover2 = Rover.new(3,3,"E")
rover2.read_instruction("instructions")
rover2.final_position
