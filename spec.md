# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
        app i sbuilt on SInatra
- [x] Use ActiveRecord for storing information in a database
        databse setup using activerecord with sql
- [x] Include more than one model class (list of model class names e.g. User, Post, Category)
        models for this project: band,commnet,concert,user,venue,concert_user
- [x] Include at least one has_many relationship (x has_many y e.g. User has_many Posts)
        ex> band has_many concerts
- [x] Include user accounts
        Sign in with unique username included
- [x] Ensure that users can't modify content created by other users
        buttons to edit or delte concert user based on user_id at time
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
        comment belonging to a user has full CRUD ability
- [X] Include user input validations
        User must sign up with username password and unique email
- [x] Display validation failures to user with error message (example form URL e.g. /posts/new)
- [X] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
