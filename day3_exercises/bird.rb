require "./animal.rb"

class Bird < Animal

  def initialize(name,can_fly=true,is_alive=true)
    @can_fly = can_fly
    super(name,is_alive)
  end
  attr_reader :can_fly
  
end
