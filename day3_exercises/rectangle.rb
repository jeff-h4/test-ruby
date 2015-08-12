class Rectangle

  def initialize(width,height)
    @width,@height = width,height
  end
  attr_accessor :width
  attr_accessor :height
  def area
    @width*@height
  end
end
