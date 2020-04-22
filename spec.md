Specifications for the Sinatra Assessment:

 [x] Use Sinatra to build the app    # I installed Sinartra gem inside of Corneal
 [x] Use ActiveRecord for storing information in a database   # I installed ActiveRecord gem inside of Corneal
 [x] Include more than one model class (e.g. User, Post, Category)  # I included a user, journal, and goal model
 [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts)  # User model has many journals/goals
 [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)  # Goals/Journals belongs to User
 [x] Include user accounts with unique login attribute (username or email)  # I chose to use email for unique login attribute
 [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying  # Users have full CRUD on journal entries
 [x] Ensure that users can't modify content created by other users   # Doesn't show links for non-matching user and uses helper methods in
        App Controller to ensure that delete/edit actions only happen if current user owns the entry
 [x] Include user input validations    
 [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
 [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code
Confirm

 [x] You have a large number of small Git commits
 [x] Your commit messages are meaningful
 [x] You made the changes in a commit that relate to the commit message
 [x] You don't include changes in a commit that aren't related to the commit message
