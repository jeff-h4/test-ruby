

require "sinatra"
require "sinatra/reloader" if development?
require "faker" # for BS

# This allows using the sessions feature in Sinatra
enable :sessions
# From Sinatra FAQ: HTTP Authentication
helpers do
  def protected!
    return if authorized?
    headers['WWW-Authenticate'] = 'Basic realm="Restricted Area"'
    halt 401, "Not authorized\n"
  end

  def authorized?
    @auth ||=  Rack::Auth::Basic::Request.new(request.env)
    @auth.provided? and @auth.basic? and @auth.credentials and @auth.credentials == ['admin', 'admin']
  end
end
# END From Sinatra FAQ: HTTP Authentication
#========================================================
# Configuration
#========================================================
before do
  @title = "BEFORE-FILTER: Company BS"
end
#========================================================
# Routes
#========================================================
# Basic Route
get "/" do  # This is a GET Request from the client
  route_get_slash
end

post "/" do
  route_post_slash
end

get "/personality_result" do
  route_get_personality_result
end
post "/personality_result" do
  route_post_personality_result
end
get "/companybs" do
  route_get_companybs
end
post "/companybs" do
  route_post_companybs
end
get "/winner" do
  route_get_winner
end
post "/winner" do
  route_post_winner
end
get "/test_protected" do
  protected!
  "you're in"
end

post "/route" do
  session[:bgcolor] = params["color_selection"]
  #erb :index, layout: :application
  redirect back
end
# the solution for color setting is
# get "/color/:name" do
#   session[:bg_color] = params[:name]
# redirect back
#end

#========================================================
# Route Definitions
#========================================================
def route_get_slash
    @route = "/"
    @page_title = "Home"
    @intro = "Welcome Home"
    @company_slogan = "Not Set"
    if session[:num_visits]
      session[:num_visits] += 1
    else
      session[:num_visits] = 1
    end

    erb :index, {layout: :application}
end

def route_post_slash
    @route = "/"
    @page_title = "Home"
    @page_title = "Home"
    @intro = "Welcome Home"
    erb :index, {layout: :application}
end

def route_get_companybs
    @route = "/companybs"
    @page_title = "Home"
    @page_title = "Company BS"
    @intro = "Let's make some BS"
    @company_slogan = "Not Set"
    erb :companybs, {layout: :application}
end

def route_post_companybs
    @route = "/companybs"
    @page_title = "Company BS"
    @intro = "Starting the BS process"
    @company_slogan = Faker::Company.catch_phrase
    erb :companybs, {layout: :application}
end

def route_get_winner
    @route = "/winner"
    @page_title = "Let's pick a winner"
    @intro = "Who is feeling lucky?"
    erb :winner, {layout: :application}
end
def route_post_winner
    @route = "/winner"
    @page_title = "We picked a winner"
    @intro = ""
    winner = params["name-list"].split(",").sample
    @winner_string = "The winner is #{winner}"
    session[:the_last_winner] = winner
    erb :winner, {layout: :application}
end

def route_get_personality_result
    @route = "/personality_result"
    @page_title = "Personality test (index)"
    @intro = "Let's start the Personality test"
    erb :personality_result, {layout: :application}
    #"Welcome to the Personality Test"
end

def route_post_personality_result
    @route = "/personality_result"
  # it looks like 'params' hash is available, without having to explicitly pass it
  @page_title = "Personality Result Page"
  @intro = "Here are the results:"
  work_best = params["question1"]
  interested_in = params["question2"]
  consider_yourself = params["question3"]

  if work_best == "with-deadlines" &&
      interested_in == "ideas" &&
      consider_yourself == "rational"
    @type = "Rational"
  else
    @type = "I don't know"
  end
  erb :personality_result, {layout: :application}
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
