App Overview

An app that stores journal entries and goal entries, centered around yogic lifestyle.

User Stories

 Users will be able to sign up , log in, and log out.

  As a user, I can ^ and create , edit , view , & delete journal entries / goals.

 Wireframing

  Models Will Be:

     User

     Attributes
        -name
        -email
        -password

     Associations
        -has_many :journal entries
        -has_many :goals

 JournalEntry

      Attributes
         -content
         -date
         -user_id  

        Associations
           -belongs_to :user

 Goal

        Attributes
           -content
           -date created
           -completion date
           -user_id  

         Associations
             -belongs_to :user

 MVP (minimum viable product)
  Users can sign up, log in, log out, create journal entries or goal entries, edit their own entries, view those, and delete

 Stretch goals
 - CSS
 - Tests
 - Public or Private
 - Include Goal Model (track goals by date?)
 - Clean up date as title in index view
