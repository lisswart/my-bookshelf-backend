puts "clearing old data..."

Book.destroy_all
Status.destroy_all
Group.destroy_all
Tag.destroy_all
BookTag.destroy_all

puts "seeding groups table"

Group.create(group_name: "nonfiction")
Group.create(group_name: "fiction")
Group.create(group_name: "Agatha Christie")
Group.create(group_name: "You Don't Know JS (Yet)")
Group.create(group_name: "Alfred Hitchcock")

puts "seeding read_statuses table"

Status.create(read_status: "Not Begun")
Status.create(read_status: "In Progress")
Status.create(read_status: "Completed")
Status.create(read_status: "Abandoned")
Status.create(read_status: "None")

puts "seeding tags table"

Tag.create(tag_name: "physics")
Tag.create(tag_name: "popular science")
Tag.create(tag_name: "ethics")
Tag.create(tag_name: "philosophy")
Tag.create(tag_name: "science")
Tag.create(tag_name: "policy")
Tag.create(tag_name: "reference")
Tag.create(tag_name: "politics")
Tag.create(tag_name: "essays")
Tag.create(tag_name: "novel")
Tag.create(tag_name: "mystery")
Tag.create(tag_name: "historical fiction")
Tag.create(tag_name: "psychology")
Tag.create(tag_name: "algorithms")
Tag.create(tag_name: "writing")
Tag.create(tag_name: "journalism")
Tag.create(tag_name: "self-help")

puts "seeding books table"

Book.create(
  book_title: "Debating Science: Deliberation, Values, and the Common Good",
  book_author: "Dane Scott, Blake Francis",
  book_description: "",
  is_notes_added: true,
  notes: "",
  group_id: 1,
  status_id: 5
  )
Book.create(
  book_title: "A Study in the Construction of Reality",
  book_author: "Gaye Tuchman",
  book_description: "",  
  is_notes_added: true,
  notes: "",
  group_id: 1,
  status_id: 5
  )
Book.create(
  book_title: "The Luminaries", 
  book_author: "Eleanor Catton",
  book_description: "",
  is_notes_added: false,
  notes: "",
  group_id: 2,
  status_id: 3
  )
Book.create(
  book_title: "Invisible Cities",
  book_author: "Italo Calvino",
  book_description: "\“Cities, like dreams, are made of desires and fears, even if the thread of their discourse is secret, their rules are absurd, their perspectives deceitful, and everything conceals something else.\” — from Invisible Cities ",
  is_notes_added: false,
  notes: "",
  group_id: 2,
  status_id: 3
  )
Book.create(
  book_title: "Thinking, Fast and Slow",
  book_author: "Daniel Kahnemann",
  book_description: "",  
  is_notes_added: false,
  notes: "",
  group_id: 1,
  status_id: 3
  )
Book.create(
  book_title: "When the Brain Can't Hear: Unraveling the Mystery of Auditory Processing Disorder",
  book_author: "Teri James Bellis, Ph.D",
  book_description: "\“Cities, like dreams, are made of desires and fears, even if the thread of their discourse is secret, their rules are absurd, their perspectives deceitful, and everything conceals something else.\” — from Invisible Cities ",  
  is_notes_added: false,
  notes: "",
  group_id: 1,
  status_id: 3
  )
Book.create(
  book_title: "Nerdy, Shy, and Socially Inappropriate: A User Guide to an Asperger Life",
  book_author: "Cynthia Kim",
  book_description: "\“Cities, like dreams, are made of desires and fears, even if the thread of their discourse is secret, their rules are absurd, their perspectives deceitful, and everything conceals something else.\” — from Invisible Cities ",  
  is_notes_added: false,
  notes: "",
  group_id: 1,
  status_id: 3
  )
Book.create(
  book_title: "Grokking Algorithms: An Illustrated Guide for Programmers and Other Curious People",
  book_author: "Aditya Y. Bhargava",
  book_description: "",  
  is_notes_added: false,
  notes: "",
  group_id: 1,
  status_id: 2
  )
Book.create(
  book_title: "Reality is Not What It Seems: The Journey to Quantum Gravity",
  book_author: "Carlo Rovelli",
  book_description: "",  
  is_notes_added: false,
  notes: "",
  group_id: 1,
  status_id: 5
  )
Book.create(
  book_title: "Writing to Learn: How to Write--and Think--Clearly",
  book_author: "William Zinsser",
  book_description: "",  
  is_notes_added: false,
  notes: "",
  group_id: 1,
  status_id: 2
  )
Book.create(
  book_title: "Science, Policy, and the Value-Free Ideal",
  book_author: "Heather Douglas",
  book_description: "",  
  is_notes_added: false,
  notes: "",
  group_id: 1,
  status_id: 3
  )
Book.create(
  book_title: "The Writing Life: Writers on How They Think and Work",
  book_author: "Marie Arana",
  book_description: "\“Cities, like dreams, are made of desires and fears, even if the thread of their discourse is secret, their rules are absurd, their perspectives deceitful, and everything conceals something else.\” — from Invisible Cities ",  
  is_notes_added: false,
  notes: "",
  group_id: 1,
  status_id: 4
  )
Book.create(
  book_title: "Prediction: Science, Decision Making, and the Future of Nature",
  book_author: "Daniel Sarewitz, Roger A. Pielke, Jr., Radford Byerly, Jr.",
  book_description: "",  
  is_notes_added: false,
  notes: "",
  group_id: 1,
  status_id: 4
  )
Book.create(
  book_title: "The Art of Political Manipulation",
  book_author: "William H. Riker",
  book_description: "\“Cities, like dreams, are made of desires and fears, even if the thread of their discourse is secret, their rules are absurd, their perspectives deceitful, and everything conceals something else.\” — from Invisible Cities ",
  is_notes_added: false,
  notes: "",
  group_id: 1,
  status_id: 5
  )
Book.create(
  book_title: "The Wave in the Mind: Talks and Essays on the Writer, the Reader, and the Imagination",
  book_author: "Ursula K. Le Guin",
  book_description: "",  
  is_notes_added: false,
  notes: "",
  group_id: 1,
  status_id: 5
  )
Book.create(
  book_title: "Style: Lessons in Clarity and Grace",
  book_author: "Joseph M. Williams, Joseph Bizup",
  book_description: "",
  is_notes_added: false,
  notes: "",
  group_id: 1,
  status_id: 5
  )



puts "seeding book_tags table"

BookTag.create(book_id: 1, tag_id:3)
BookTag.create(book_id: 1, tag_id:4)
BookTag.create(book_id: 2, tag_id:16)
BookTag.create(book_id: 3, tag_id:10)
BookTag.create(book_id: 3, tag_id:11)

BookTag.create(book_id: 3, tag_id:12)
BookTag.create(book_id: 4, tag_id:10)
BookTag.create(book_id: 5, tag_id:13)
BookTag.create(book_id: 6, tag_id:17)
BookTag.create(book_id: 7, tag_id:17)

BookTag.create(book_id: 8, tag_id:14)
BookTag.create(book_id: 9, tag_id:1)
BookTag.create(book_id: 9, tag_id:2)
BookTag.create(book_id: 10, tag_id:15)
BookTag.create(book_id: 11, tag_id:5)

BookTag.create(book_id: 11, tag_id:6)
BookTag.create(book_id: 11, tag_id:8)
BookTag.create(book_id: 11, tag_id:3)
BookTag.create(book_id: 12, tag_id:9)
BookTag.create(book_id: 13, tag_id:5)

BookTag.create(book_id: 13, tag_id:6)
BookTag.create(book_id: 14, tag_id:8)
BookTag.create(book_id: 15, tag_id:9)
BookTag.create(book_id: 16, tag_id:7)

puts "done seeding!"