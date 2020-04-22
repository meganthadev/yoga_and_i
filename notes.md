App Overview

An app that stores journal entries to track your progress for poses or for other things, made with the yogic lifestyle in mind.

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

 (Stretch Goal- Goal Model)

        Attributes
           -content
           -date created
           -completion date
           -user_id  

         Associations
             -belongs_to :user

 MVP (minimum viable product)
  Users can sign up, log in, log out, create journal entries to track yoga progress, edit their own entries, view those, and delete

 Stretch goals
 - CSS
 - Tests
 - Public or Private
 - Include Goal Model (track goals by date?)
 - Clean up date as title in index view
