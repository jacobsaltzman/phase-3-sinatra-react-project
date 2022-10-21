class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  #movies controller
  get "/movies" do
    movies = Movie.all 
    movies.to_json  #can do Movie.all.to_json, but keeping it separate for clarity and learning for now
  end

  get "/movies/:id" do
    movie = Movie.find(params[:id])
    movie.to_json
  end

  post "/movies" do
    movie = Movie.create(params)
    movie.to_json
  end


end
