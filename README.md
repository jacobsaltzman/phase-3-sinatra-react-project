# Phase 3 Project Horror Rater -- Backend API


## Description


The API for a horror movie database with details for each movie, including director, release date, and sub-genre. Among that list, movies include reviews through "users" that post comments and ratings, both on overall quality of the film and the scariness factor.  This includes the database migrations, models, and controllers for all the parts, along with necessary gem files and configurations.


## Introduction


This project's focus is **Ruby** and OOP in which I **built this Sinatra API backend** that uses
**Active Record** to access and persist data in a database, which is used
by a separate **React frontend** that interacts with the database via the API. View the frontend here:


https://github.com/jacobsaltzman/phase-3-react-frontend 



## Usage


For this project, the back-end does the following:


[✔️] Uses Active Record to interact with an SQL database created with the migrations.


[✔️] Has at least two models with a one-to-many relationship.


[✔️] Uses API routes in Sinatra to add:


  - create and read actions for the movie and user models:


    --**Create** a new movie or a user (just a simulation of user-creation; authentication comes later)

    --**Read** a list of movies or users


  - full CRUD capability for one of the review model:


    --**Create** a new review of a movie

    --**Read** a list of reviews

    --**Update** an individual review

    --**Delete** a review


[✔️] Builds a separate React frontend application that interacts with the API to
  perform CRUD actions.


[✔️] Uses good OO design patterns, having separate classes for each of
  model, and has instance and class methods as necessary.


[✔️] Has routes that follow RESTful conventions.


## Getting Started


### Backend Setup


This repository has all the starter code needed to get a Sinatra backend up and
running. Run `bundle install` to install the gems.


If not present, run `rake db:migrate` to run the migrations and get the necessary **schema**. And you can also run `rake db:seed` if you wish to use the **seed data**.


You can start your server with:

```console
$ bundle exec rake server
```

This will run your server on port
[http://localhost:9292](http://localhost:9292).


Review the JSON data and make fetch requests for each model using:

[http://localhost:9292/movies](http://localhost:9292/movies)

[http://localhost:9292/reviews](http://localhost:9292/reviews).



### Frontend Setup


See the Frontend repo for directions.


## Further explanations


- This project is intended to focus more on the backend than the frontend. It mainly focuses on working with Active Record and performing CRUD actions with that API.


- Future additions would be to include user login authentication, houses and awards models, and more functionality.


