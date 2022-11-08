class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Boo!" }.to_json
  end

  #movies controller

  get "/movies" do
    movies = Movie.all 
    movies.to_json  #can do Movie.all.to_json, but keeping it separate for clarity and learning for now
  end

  get "/movies/:id" do
    movie = Movie.find(params[:id])
    movie.to_json(include: :reviews )
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

  #get the exact title of the movie for the review

  get "/reviews/:id/movie" do  
    review = Review.find(params[:id])
    review_movie = review.movie.title
    review_movie.to_json
  end

  #get the user who made the review
  get "/reviews/:id/user" do
    review = Review.find(params[:id])
    review_user = review.user.username
    review_user.to_json
  end

  get "/reviews/:id/comments" do
    review = Review.find(params[:id])
    review_comment = review.comments
    review_comment.to_json
  end

  post "/reviews" do
    review = Review.create(params) #params = user id and movie id, est association for many to many
    review.to_json
  end

  patch "/reviews/:id" do
    review = Review.find(params[:id])
    review.update(params) 
    review.to_json
  end

  #patch request for just the comment portion
  #patch "/reviews/:id/comments" do
    #review = Review.find(params[:id])
    #review_comment = review.comments.update(params) 
    #review_comment.to_json
  #end

  delete "/reviews/:id" do
    review = Review.find(params[:id])
    review.destroy
    review.to_json
  end

end
