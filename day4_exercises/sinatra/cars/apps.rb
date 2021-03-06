

require "sinatra"
require "sinatra/reloader" if development?
#========================================================
# Configuration
#========================================================
before do
  @title = "BEFORE-FILTER: CONFIG TITLE"
end
#========================================================
# Routes
#========================================================
# Basic Route
get "/" do  # This is a GET Request from the client
  @title = "ROUTE-TITLE"
  route_get_slash
end

get "/description" do
  #route_get_description
  "This is a description #{params.to_s} blah"
end

post "/car_age" do
  # It seems you can only put 1 string here
  # it looks like 'params' hash is available, without having to explicitly pass it
  route_get_car_age
end
#========================================================
# Route Definitions
#========================================================
def route_get_slash
    erb :index, {layout: :application}
end

def route_get_car_age
  # it looks like 'params' hash is available, without having to explicitly pass it
  erb :car_age_result, {layout: :application}
end

def route_get_description
  "This is a description"
end


#    # post <URL>
#    # This is where index.erb's form action must go
#    post "/sinatra_temperature" do
#      # params is a Hash object that is given to us by Sinatra
#      # It contains the key / value pairs from the parameters 
#      # received from the client.
#      # If this is a web form, the key matches the "name" HTML attribute,
#      # and the value will be whatever the uer enters in the input field
#      temp_deg = params[:temp_deg]
#      temp_fahr = temp_deg.to_i*9/5.0 + 32
#      "The temperature in fahrenheit is #{temp_fahr.to_s} degrees"
#    end
