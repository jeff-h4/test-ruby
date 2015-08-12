
class Animal

  def initialize(name,is_alive=true)
    @name,@is_alive = name, is_alive
  end

  attr_reader :name
  attr_accessor :is_alive

end
