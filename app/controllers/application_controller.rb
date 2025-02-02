class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'


  #house controller

  get "/houses" do
    houses = House.all
    houses.to_json
  end

  get "/awards" do
    awards = Award.all
    awards.to_json(:include => [:house])
  end



  
  #movies controller

  get "/movies" do
    movies = Movie.all 
    movies.to_json(:include => [:reviews])  
  end

  get "/movies/:id" do
    movie = Movie.find(params[:id])
    movie.to_json(only: [:id, :title, :image, :year], include: {
      reviews: { only: [:comments, :user_rating, :scare_scale], include: {
        user: { only: [:username] }
      } }
    })
  end

  post "/movies" do
    movie = Movie.create(params)
    movie.to_json(:include => [:reviews]) 
  end


  #reviews controller


  get "/reviews" do 
    reviews = Review.all 
    reviews.to_json(:include => [:movie, :user]) #multiple associations on the same level
  end

  get "/reviews/:id" do
    review = Review.find(params[:id])
    review.to_json(:include => [:movie, :user])
  end

  post "/reviews" do
    review = Review.create(params)
    review.to_json(:include => [:movie, :user])
  end

  patch "/reviews/:id" do
    review = Review.find(params[:id])
    review.update(params) 
    review.to_json(:include => [:movie, :user])
  end

  delete "/reviews/:id" do
    review = Review.find(params[:id])
    review.destroy
    review.to_json
  end

  get "/movies/:id/reviews" do
    review = Movie.find(params[:id]).reviews
    review.to_json(:include => [:user])
  end




  #users controller,

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



  get "/" do
    { message: "Boo!" }.to_json
  end

end

#depreciated methods but saving for potential future use

  #patch request for just the comment portion
  #patch "/reviews/:id/comments" do
    #review = Review.find(params[:id])
    #review_comment = review.comments.update(params) 
    #review_comment.to_json
  #end

  #get the exact title of the movie for the review
  #get "/reviews/:id/movie" do  
      #review = Review.find(params[:id])
      #review_movie = review.movie.title
      #review_movie.to_json
    #end
  
    #get the user who made the review
    #get "/reviews/:id/user" do
      #review = Review.find(params[:id])
      #review_user = review.user.username
      #review_user.to_json
    #end

    

    
  

