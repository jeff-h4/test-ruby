

begin
  10/0
  rescue
    puts "Can't divide by zero"
end

begin 
  10/0
  rescue => e
  puts "Can't divide by zero - original message: #{e.message}"
end

begin 
  black
  rescue ZeroDivisionError  => e
    puts "Can't divide by zero - original message: #{e.message}"
  rescue => e
    puts "Unknown error: #{e.message}"
    puts "backtrace:  #{e.backtrace}"
  
end
