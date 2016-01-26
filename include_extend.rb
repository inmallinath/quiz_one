=begin
Any class that includes a certain module can use methods defined in the module. In essence we need not prepend the constants and methods with the module name. We can simply access PI without using Math::PI.
=end

class Circle
    include Math
  attr_accessor :radius

  def initialize(radius)
    @radius = radius
  end

  def area
    puts "The area of the circle is: " + (PI*radius**2).round(2).to_s;
  end
end

myCircle = Circle.new(10)
myCircle.area

=begin
Whereas include mixes a module's methods in at the instance level, the extend keyword mixes a module's methods at the class level. This means that class itself can use the methods, as opposed to instances of the class.
=end

module DateDMY
  def date_in_dmY
    puts "The current date in DD-MM-YYYY format is: #{Time.now.strftime("%d-%m-%Y")} "
  end
end

class DMY
  extend DateDMY
end

DMY.date_in_dmY
