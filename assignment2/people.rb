class Person

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello, my name is #{@name}"
  end

end
#----------------------------------------------------------------------------
class Student < Person

  def initialize(name)
    super (name)
  end

  def learn
    puts "I get it!"
  end

end
#----------------------------------------------------------------------------
class Instructor < Person

  def initialize(name)
    super (name)
  end

  def teach
    puts "Everything in Ruby is an Object"
  end

end

#---------------------------------------------------------------------------- s

new_student = Student.new("Chris")

puts new_student.inspect
new_student.greet
new_student.learn

puts "\n\n"#----------------------------------------------------------------------------


new_instructor = Instructor.new("Nadia")

puts new_instructor.inspect
new_instructor.greet
new_instructor.teach

new_instructor.learn #------ERROR -------
#THE CLASS Instructor do not know  the method learn!!!
