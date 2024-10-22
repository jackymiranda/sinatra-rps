require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get ("/rock") do
  
  moves=["rock","paper","scissors"]
  @comp_moves=moves.sample

  if @comp_moves=="rock"
    @outcome = "tied"
  elsif @comp_moves=="paper"
    @outcome= "lost"
  else 
    @outcome="won"
  end

erb(:zebra)

end

get ("/paper") do
    
  moves=["rock","paper","scissors"]
  @comp_moves=moves.sample

  if @comp_moves=="paper"
    @outcome = "tied"
  elsif @comp_moves=="scissors"
    @outcome= "lost"
  else 
    @outcome="won"
  end

  erb(:giraffe)
end

get ("/scissors") do
    
  moves=["rock","paper","scissors"]
  @comp_moves=moves.sample

  if @comp_moves=="scissors"
    @outcome = "tied"
  elsif @comp_moves=="rock"
    @outcome= "lost"
  else 
    @outcome="won"
  end

  erb(:elephant)
end
