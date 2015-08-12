require "./animal.rb"

class Cat < Animal

  def initialize(name,fail_rate,is_alive=true)
    @fail_rate = fail_rate
    super(name,is_alive)
  end
  
  def catch_bird?(the_bird)
    num = rand(100)+1
    puts "#{num} vs #{@fail_rate}"
    if num > @fail_rate
      the_bird.is_alive = false;
      return true;
    end
    return false;
  end
end
