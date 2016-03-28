class Rover
  attr_accessor :x, :y, :direction
    def initialize(x,y,direction)
      @x = x
      @y = y
      @direction = direction
    end


    def plateau_size (length_by_x,length_by_y)
      puts "What is the length of the plateau by x?"
        length_by_x = gets.to_i
          if @x <= length_by_x
              puts "Cool."
            else
              puts "I am falling off the plateau!"
            end

      puts "What is the length of the plateau by x?"
        length_by_y = gets.to_i
          if @y <= length_by_y
              puts "Cool."
            else
              puts "I am falling off the plateau!"
            end
    end


    def read_instruction(instructions)
      puts "What are your instructions?"
        instructions = gets.split("")
        instructions.each do |motion|
            if motion == "L"
              self.turn_left
            elsif motion == "R"
                self.turn_right
              elsif motion == "M"
                  self.move
                else
                  "Please modify your instructions."
              end
         end
    end


    def turn_left
         if @direction == "N"
              @direction = "W"
            elsif @direction == "E"
                @direction = "N"
              elsif @direction == "S"
                  @direction = "E"
                elsif @direction == "W"
                  @direction = "S"
                  else
                    puts "Eh?"
                  end
      end

    def turn_right
         if @direction == "W"
              @direction = "N"
            elsif @direction == "N"
              @direction = "E"
              elsif @direction == "E"
                @direction = "S"
                elsif @direction == "S"
                  @direction = "W"
                  else
                    puts "Eh?"
                  end
    end

      def move
      if @direction == "N" then @y += 1
      elsif @direction == "E" then @x += 1
      elsif @direction == "S" then @y -= 1
      elsif @direction == "W" then @x -= 1
      else
        puts "Invalid command."
      end
      end


      def final_position
        puts "#{@x} #{@y} #{@direction} "
      end

end

rover1 = Rover.new(1,2,'N')
rover1.read_instruction("rover1")
rover1.final_position
rover1.plateau_size("x","y")

rover2 = Rover.new(3,3,"E")
rover2.read_instruction("rover2")
rover2.final_position
rover2.plateau_size("x","y")
