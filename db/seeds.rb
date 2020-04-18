#seed data to work with and test associations

#Create 2 Users

megan = User.create(name: "Megan", email: "megan@email.com", password: "password")
tracy = User.create(name: "Tracy", email: "tracy@email.com", password: "password")

# Create Some Journal Entries

megans_journal_1 = JournalEntry.create(content: "Lovely Day", user_id: megan.id)

megan.journal_entries.create(content: "Hello there")

tracys_entry = tracy.journal_entries.build(content: "Yep")
tracys_entry.save 
