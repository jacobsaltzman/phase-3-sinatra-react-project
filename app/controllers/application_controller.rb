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


  #users controller

  get "/users" do
    users = User.all 
    users.to_json  
  end

  get "/users/:id" do
    user = User.find(params[:id])
    user.to_json
  end

  post "/users" do
    user = User.create(params)
    user.to_json
  end


  #reviews controller
  get "/reviews" do
    reviews = Review.all 
    reviews.to_json  
  end

  get "/reviews/:id" do
    review = Review.find(params[:id])
    review.to_json
  end

  post "/reviews" do
    review = Review.create(params)
    review.to_json
  end
end
