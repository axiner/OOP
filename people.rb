class Person
  attr_accessor :name
    def initialize(name)
        @name = name

    def greetings
    puts "Hi,my name is #{name}"
    end
  end
end

class Student < Person
  def learn
    puts "I get it!"
  end
end


class Instructor < Person
  def teach
    puts "Everything in Ruby is an Object"
  end
end


chris = Instructor.new ("Chris")

chris.greetings

christina = Student.new("Christina")

christina.greetings

chris.teach

christina.learn

chris.learn #This can't work because teach is a behaviour(method) assigned to instructor only

christina.teach #This can't work because learn is a behaviour(method) assigned to instructor only
