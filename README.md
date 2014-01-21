# front-end-test

This repo is for testing prospective front-end candidates.

## All Right!

Here we have a basic rails repo.  The database has been seeded with some judges and there are controller methods to propagate them to the front end.

## The assignment is:

Make a view to select different judges from the database.  When you click them, deliver the viewer to another view that has the judge's profile information.

## Notes:

If there are things that you would prefer to build that require additional backend support, make a note of what they are!  Don't lose the forest for the trees.  Describe an ideal-world scenario if you prefer.

Comment liberally, there isn't a single "right" answer, and the time constraint is acknowledged.  If there is something you don't have time to execute, write some pseudo-code in comments describing your future work.

Feel free to ask questions along the way!  If there's anything unclear, please email your thoughts.

This is a Rails 3.2.13 project!  You may need to ensure you're using the right environment.

Ruby version 1.9.3p374, you may need to verify with rbenv to make sure you're not in the future.

## Instructions

Pull down the repo, like so:

`git clone git@github.com:kamalasaurus/front-end-test.git`

 and check out a branch with your name, like so:

`git checkout -b your-name`

To run the app, first enter the directory and bundle install like so:

`bundle`

then run

`bundle exec rails s`

This should point your local server to **localhost:3000**.  The data is remotely stored, so don't worry about spinning up a database or anything.  You will need an active internet connection for the app to work.

Convenience methods for the judge objects can be found in **app/models/judge.rb**

URL actions can be found in **app/controllers/judge_controller.rb**

Routes are found in **config/routes.rb**

Feel free to add/modify/change as necessary if you want to do something specific.  In general, you won't need to since all the information for each judge can be found in both the index and the show pages.

## Deliverables

Author a couple views (**app/assets/views/index.html.erb**, and **app/assets/views/show.html.erb**) and the associated SCSS file (**app/assets/stylesheets/judge.css.scss**) to make the appearance of the information aesthetically pleasing.  Try to make note of best practices for SCSS and HTML/DOM construction.

If you're feeling up to it, spice up the interface with some coffeescript in **app/assets/javascripts/judge.js.coffee**.  Two dummy classes are constructed for you on a per-page basis.  You won't need to write any more classes.  The classes take in and replicate all the data from the HTTP request.

Please refrain from thick client libraries like Backbone or Angular (we don't use them in production).  See if you can recreate the effects you want with just coffeescript/jQuery, HTML, and CSS.  You'll find jQuery will take you a long way.  If you need to make an AJAX call, use jQuery's ajax method.  Feel free to leverage Google or any external documentation you need.  Add additional dependencies or gems if you wish as well.

Also, we don't use Bootstrap (!).  So, don't use Bootstrap.

When complete, push the branch to origin and make a pull request.  In theory, I should be able to pull down the code and run it on my local server.  If you can think of something fun and artistic instead of staid and decorous, see if you can incorporate it––make it fun!

# GOOD LUCK!
