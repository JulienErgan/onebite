# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
# require 'nokogiri'


puts 'Cleaning up the chapters...'
Chapter.destroy_all

puts 'Cleaning up the enrollments...'
Enrollment.destroy_all

puts 'Cleaning up the users...'
User.destroy_all


puts 'Creating users...'

@user_julien = User.create!(
  name: 'julien',
  email: "julien.ergan@gmail.com",
  password: 'secret'
)

@user_yun = User.create!(
  name: 'yun',
  email: "yunshine@gmail.com",
  password: 'secret'
)

@user_shogo = User.create!(
  name: 'shogo',
  email: "shogo.hida@gmail.com",
  password: 'secret'
)

@user_doug = User.create!(
  name: 'doug',
  email: "doug.hida@gmail.com",
  password: 'secret'
)

@user_yann = User.create!(
  name: 'yann',
  email: "yann.hida@gmail.com",
  password: 'secret'
)

@user_trouni = User.create!(
  name: 'trouni',
  email: "trouni.hida@gmail.com",
  password: 'secret'
)

@user_sylvain = User.create!(
  name: 'sylvain',
  email: "sylvain.hida@gmail.com",
  password: 'secret'
)

@user_sasha = User.create!(
  name: 'sasha',
  email: "sasha.hida@gmail.com",
  password: 'secret'
)

@user_genesis = User.create!(
  name: 'genesis',
  email: "genesis@gmail.com",
  password: 'secret'
)

@user_annie = User.create!(
  name: 'annie',
  email: "annie@gmail.com",
  password: 'secret'
)

@user_jay = User.create!(
  name: 'jay',
  email: "jay@gmail.com",
  password: 'secret'
)

@user_aaron = User.create!(
  name: 'aaron',
  email: "aaron@gmail.com",
  password: 'secret'
)

@user_miki = User.create!(
  name: 'miki',
  email: "miki@gmail.com",
  password: 'secret'
)

@user_dai = User.create!(
  name: 'dai',
  email: "dai@gmail.com",
  password: 'secret'
)

@user_micky = User.create!(
  name: 'micky',
  email: "micky@gmail.com",
  password: 'secret'
)

@user_tomoyuki = User.create!(
  name: 'tomoyuki',
  email: "tomoyuki@gmail.com",
  password: 'secret'
)

puts "Finished creating #{User.count} users!"


puts 'Cleaning up the courses...'
Course.destroy_all

# platform part unnecessary?
puts 'Cleaning up the platforms...'
Platform.destroy_all

puts 'Creating the platforms..'

@duolingo = Platform.create!(
  name: 'Duolingo',
  url: 'https://www.duolingo.com'
)
@codecademy = Platform.create!(
  name: 'Codecademy',
  url: 'https://www.codecademy.com'
)
@udemy = Platform.create!(
  name: 'Udemy',
  url: 'https://www.udemy.com'
)
@coursera = Platform.create!(
  name: 'Coursera',
  url: 'https://www.coursera.com'
)
@wanikani = Platform.create!(
  name: 'Wanikani',
  url: 'https://www.wanikani.com'
)

puts "Finished creating #{Platform.count} platforms!"

puts 'Creating courses...'


# list of Duolingo available languages for English learners as of 31 May 2020


# seeds NOT created for the following languages
# Spanish
# Japanese
# Korean
# German
# Ukrainian
# Italian
# Portuguese for Brazilian Portuguese

# Seeds created for the following languages

# French

# Russian
# Arabic
# Turkish
# Hindi
# Dutch
# Swedish
# Latin
# Greek
# Irish
# Polish
# Hebrew
# Vietnamese
# Hawaiian
# Danish
# Romanian
# Indonesian
# Welsh
# Czech
# Swahili

# Esperanto

# DO NOT seed with this languages
# High Valyrian
# Norwegian Bokmal
# Brazilian Portuguese
# Mandarin Chinese
# Scottish Gaelic
# latin American Spanish


# Duolingo courses

@duolingo_spanish = Course.create!(
  title: 'Spanish',
  url: 'https://www.duolingo.com/course/es/en/Learn-Spanish',
  description: "Learn Spanish in just 5 minutes a day. For free.",
  rating: nil,
  difficulty: nil,
  expected_time_to_complete: 'Not Applicable',
  platform_id: @duolingo.id
)

@duolingo_japanese = Course.create!(
  title: 'Japanese',
  url: 'https://www.duolingo.com/',
  description: "Learn Japanese in just 5 minutes a day. For free.",
  rating: nil,
  difficulty: nil,
  expected_time_to_complete: 'Not Applicable',
  platform_id: @duolingo.id
)

@duolingo_korean = Course.create!(
  title: 'Korean',
  url: 'https://www.duolingo.com/course/ko/en/Learn-Korean',
  description: "Learn Korean in just 5 minutes a day. For free.",
  rating: nil,
  difficulty: nil,
  expected_time_to_complete: 'Not Applicable',
  platform_id: @duolingo.id
)


@duolingo_german = Course.create!(
  title: 'German',
  url: 'https://www.duolingo.com/course/de/en/Learn-German',
  description: "Learn German in just 5 minutes a day. For free.",
  rating: nil,
  difficulty: nil,
  expected_time_to_complete: 'Not Applicable',
  platform_id: @duolingo.id
)

@duolingo_ukrainian = Course.create!(
  title: 'Ukrainian',
  url: 'https://www.duolingo.com/course/uk/en/Learn-Ukrainian',
  description: "Learn Ukrainian in just 5 minutes a day. For free.",
  rating: nil,
  difficulty: nil,
  expected_time_to_complete: 'Not Applicable',
  platform_id: @duolingo.id
)


@duolingo_italian = Course.create!(
  title: 'Italian',
  url: 'https://www.duolingo.com/course/it/en/Learn-Italian',
  description: "Learn Italian in just 5 minutes a day. For free.",
  rating: nil,
  difficulty: nil,
  expected_time_to_complete: 'Not Applicable',
  platform_id: @duolingo.id
)


@duolingo_french = Course.create!(
  title: 'French',
  url: 'https://www.duolingo.com/course/fr/en/Learn-French',
  description: "Learn French in just 5 minutes a day. For free.",
  rating: nil,
  difficulty: nil,
  expected_time_to_complete: 'Not Applicable',
  platform_id: @duolingo.id
)


@duolingo_portuguese = Course.create!(
  title: 'Portuguese',
  url: 'https://www.duolingo.com/course/pt/en/Learn-Portuguese',
  description: "Learn Portuguese in just 5 minutes a day. For free.",
  rating: nil,
  difficulty: nil,
  expected_time_to_complete: 'Not Applicable',
  platform_id: @duolingo.id
)

@duolingo_portuguese = Course.create!(
  title: 'Portuguese',
  url: 'https://www.duolingo.com/course/pt/en/Learn-Portuguese',
  description: "Learn Portuguese in just 5 minutes a day. For free.",
  rating: nil,
  difficulty: nil,
  expected_time_to_complete: 'Not Applicable',
  platform_id: @duolingo.id
)

@duolingo_esperanto = Course.create!(
  title: 'Esperanto',
  url: 'https://en.duolingo.com/course/eo/en/Learn-Esperanto',
  description: "Learn Esperanto in just 5 minutes a day. For free.",
  rating: nil,
  difficulty: nil,
  expected_time_to_complete: 'Not Applicable',
  platform_id: @duolingo.id
)


@duolingo_chinese = Course.create!(
  title: 'Chinese',
  url: 'https://en.duolingo.com/course/zh/en/Learn-Chinese',
  description: "Learn Chinese in just 5 minutes a day. For free.",
  rating: nil,
  difficulty: nil,
  expected_time_to_complete: 'Not Applicable',
  platform_id: @duolingo.id
)


# Codecademy courses

@javascript = Course.create!(
  title: 'Learn JavaScript',
  url: 'https://www.codecademy.com/learn/introduction-to-javascript',
  description: "Learn the JavaScript fundamentals you'll need for front-end or back-end development.",
  rating: nil,
  difficulty: nil,
  expected_time_to_complete: 30,
  platform_id: @codecademy.id
)
@javascript_2 = Course.create!(
  title: 'The Complete JavaScript Course 2020',
  url: 'https://www.udemy.com/course/the-complete-javascript-course/',
  description: "Master JavaScript with the most complete course! Projects, challenges, quizzes, JavaScript ES6+, OOP, AJAX, Webpack",
  rating: nil,
  difficulty: nil,
  expected_time_to_complete: 28,
  platform_id: @udemy.id
)
@javascript_3 = Course.create!(
  title: 'JavaScript: Understanding the Weird Parts',
  url: 'https://www.udemy.com/course/understand-javascript/',
  description: "An advanced JavaScript course for everyone! Scope, closures, prototypes, 'this', build your own framework, and more.",
  rating: nil,
  difficulty: nil,
  expected_time_to_complete: 12,
  platform_id: @udemy.id
)
@javascript_4 = Course.create!(
  title: 'Interactivity with JavaScript',
  url: 'https://www.coursera.org/learn/javascript?specialization=web-design#syllabus',
  description: "This course will introduce you to the basics of the JavaScript language.  We will cover concepts such as variables, looping, functions, and even a little bit about debugging tools.",
  rating: nil,
  difficulty: nil,
  expected_time_to_complete: 11,
  platform_id: @coursera.id
)
@ruby = Course.create!(
  title: 'Learn Ruby',
  url: 'https://www.codecademy.com/learn/learn-ruby',
  description: "Learn to program in Ruby, a ﬂexible and beginner-friendly language used to create sites like Codecademy.",
  rating: nil,
  difficulty: nil,
  expected_time_to_complete: 10,
  platform_id: @codecademy.id
)

puts 'Chapters being created...'
chapter_one = Chapter.create!(
    name: "1 - Introduction and Basics",
    course_id: @duolingo.id
)
chapter_two = Chapter.create!(
    name: "2 - Daily Vocabulary",
    course_id: @duolingo.id
)
chapter_three = Chapter.create!(
    name: "3 - Common Activities",
    course_id: @duolingo.id
)
chapter_four = Chapter.create!(
    name: "4 - Activities Advanced",
    course_id: @duolingo.id
)
chapter_five = Chapter.create!(
    name: "5 - Special Events",
    course_id: @duolingo.id
)
chapter_6 = Chapter.create!(
    name: "6 - Activities Advanced",
    course_id: @duolingo.id
)
chapter_seven = Chapter.create!(
    name: "7 - Specialized Vocabulary",
    course_id: @duolingo.id
)


chapter_one = Chapter.create!(
    name: "1 - Learn Hiragana 1",
    course_id: @duolingo_japanese.id
)
chapter_two = Chapter.create!(
    name: "2 - Learn Hiragana 2",
    course_id: @duolingo_japanese.id
)
chapter_three = Chapter.create!(
    name: "3 - Learn Katakana 1",
    course_id: @duolingo_japanese.id
)
chapter_four = Chapter.create!(
    name: "4 - Learn Katakana 2",
    course_id: @duolingo_japanese.id
)
chapter_five = Chapter.create!(
    name: "5 - Basic greetings",
    course_id: @duolingo_japanese.id
)
chapter_six = Chapter.create!(
    name: "6 - Basic conversation",
    course_id: @duolingo_japanese.id
)
chapter_seven = Chapter.create!(
    name: "7 - Learn Keigo",
    course_id: @duolingo_japanese.id
)
chapter_eight = Chapter.create!(
    name: "8 - Basic Kanji 1",
    course_id: @duolingo_japanese.id
)
chapter_nine = Chapter.create!(
    name: "9 - Basic Kanji 2",
    course_id: @duolingo_japanese.id
)
chapter_ten = Chapter.create!(
    name: "10 - Advanced Kanji",
    course_id: @duolingo_japanese.id
)


chapter_one = Chapter.create!(
    name: "1 - Introduction to Ruby",
    course_id: @ruby.id
)
chapter_two = Chapter.create!(
    name: "2 - Control Flow in Ruby",
    course_id: @ruby.id
)
chapter_three = Chapter.create!(
    name: "3 - Looping with Ruby",
    course_id: @ruby.id
)
chapter_four = Chapter.create!(
    name: "4 - Arrays and Hashes",
    course_id: @ruby.id
)
chapter_five = Chapter.create!(
    name: "5 - Blocks and Sorting",
    course_id: @ruby.id
)
chapter_six = Chapter.create!(
    name: "6 - Hashes and Symbols",
    course_id: @ruby.id
)
chapter_seven = Chapter.create!(
    name: "7 - Refactoring",
    course_id: @ruby.id
)
chapter_eight = Chapter.create!(
    name: "8 - Blocks, Procs, and Lambdas",
    course_id: @ruby.id
)
chapter_nine = Chapter.create!(
    name: "9 - Object-Oriented Programming, Part 1",
    course_id: @ruby.id
)
chapter_ten = Chapter.create!(
    name: "10 - Object-Oriented Programming, Part 2",
    course_id: @ruby.id
)

chapter_one = Chapter.create!(
    name: "1 - Intro to JavaScript",
    course_id: @javascript_4.id
)
chapter_two = Chapter.create!(
    name: "2 - Reacting to Your Audience",
    course_id: @javascript_4.id
)
chapter_three = Chapter.create!(
    name: "3 - Arrays and Looping",
    course_id: @javascript_4.id
)
chapter_four = Chapter.create!(
    name: "4 - Validating Form Data",
    course_id: @javascript_4.id
)

chapter_one = Chapter.create!(
    name: "1 - Introduction",
    course_id: @javascript.id
)
chapter_two = Chapter.create!(
    name: "2 - Conditionals",
    course_id: @javascript.id
)
chapter_three = Chapter.create!(
    name: "3 - Functions",
    course_id: @javascript.id
)
chapter_four = Chapter.create!(
    name: "4 - Scope",
    course_id: @javascript.id
)
chapter_five = Chapter.create!(
    name: "5 - Arrays",
    course_id: @javascript.id
)
chapter_six = Chapter.create!(
    name: "6 - Loops",
    course_id: @javascript.id
)
chapter_seven = Chapter.create!(
    name: "7 - Iterators",
    course_id: @javascript.id
)
chapter_eight = Chapter.create!(
    name: "8 - Objects",
    course_id: @javascript.id
)
chapter_nine = Chapter.create!(
    name: "9 - Classes",
    course_id: @javascript.id
)
chapter_ten = Chapter.create!(
    name: "10 - Browser Compatibility and Transpilation",
    course_id: @javascript.id
)
chapter_eleven = Chapter.create!(
    name: "11 - Modules",
    course_id: @javascript.id
)
chapter_twelve = Chapter.create!(
    name: "12 - Promises",
    course_id: @javascript.id
)
chapter_thirteen = Chapter.create!(
    name: "13 - Async-Await",
    course_id: @javascript.id
)
chapter_fourteen = Chapter.create!(
    name: "14 - Requests",
    course_id: @javascript.id
)

chapter_one = Chapter.create!(
    name: "1 - Course Introduction",
    course_id: @javascript_2.id
)
chapter_two = Chapter.create!(
    name: "2 - JavaScript Language Basics",
    course_id: @javascript_2.id
)
chapter_three = Chapter.create!(
    name: "3 - How JavaScript Works Behind the Scenes",
    course_id: @javascript_2.id
)
chapter_four = Chapter.create!(
    name: "4 - JavaScript in the Browser",
    course_id: @javascript_2.id
)
chapter_five = Chapter.create!(
    name: "5 - Advanced JavaScript",
    course_id: @javascript_2.id
)
chapter_six = Chapter.create!(
    name: "6 - Putting It All Together",
    course_id: @javascript_2.id
)
chapter_seven = Chapter.create!(
    name: "7 - Next Generation JavaScript",
    course_id: @javascript_2.id
)
chapter_eight = Chapter.create!(
    name: "8 - Asynchronous JavaScript",
    course_id: @javascript_2.id
)
chapter_nine = Chapter.create!(
    name: "9 - Modern JavaScript",
    course_id: @javascript_2.id
)
chapter_ten = Chapter.create!(
    name: "10 - Final Course Exam",
    course_id: @javascript_2.id
)
chapter_eleven = Chapter.create!(
    name: "11 - Conclusion",
    course_id: @javascript_2.id
)
chapter_twelve = Chapter.create!(
    name: "12 - Bonus: A Node.js Crash Course",
    course_id: @javascript_2.id
)
chapter_one = Chapter.create!(
    name: "1 - Getting Started",
    course_id: @javascript_3.id
)
chapter_two = Chapter.create!(
    name: "2 - Execution Contexts and Lexical Environments",
    course_id: @javascript_3.id
)
chapter_three = Chapter.create!(
    name: "3 - Types and Operators",
    course_id: @javascript_3.id
)
chapter_four = Chapter.create!(
    name: "4 - Objects and Functions",
    course_id: @javascript_3.id
)
chapter_five = Chapter.create!(
    name: "5 - Object-Oriented JavaScript",
    course_id: @javascript_3.id
)
chapter_six = Chapter.create!(
    name: "6 - Building Objects",
    course_id: @javascript_3.id
)
chapter_seven = Chapter.create!(
    name: "7 - Odds and Ends",
    course_id: @javascript_3.id
)
chapter_eight = Chapter.create!(
    name: "8 - Examining Famous Frameworks and Libraries",
    course_id: @javascript_3.id
)
chapter_nine = Chapter.create!(
    name: "9 - Let's Build a Framework/Library!",
    course_id: @javascript_3.id
)
chapter_ten = Chapter.create!(
    name: "10 - Bonus Lectures",
    course_id: @javascript_3.id
)
chapter_eleven = Chapter.create!(
    name: "11 - Bonus: Getting Ready for ECMAScript 6",
    course_id: @javascript_3.id
)
chapter_twelve = Chapter.create!(
    name: "12 - Conclusion",
    course_id: @javascript_3.id
)
puts 'Chapters have been created...'


@learn_html = Course.create!(
  title: 'Learn HTML',
  url: 'https://www.codecademy.com/learn/learn-html',
  description: "Learn the basics of HMTL5 and start building & editing web pages",
  rating: nil,
  difficulty: nil,
  expected_time_to_complete: 10,
  platform_id: @codecademy.id
)

@learn_python = Course.create!(
  title: 'Learn Python 2',
  url: 'https://www.codecademy.com/learn/learn-python',
  description: "Learn the basics of the world's fastest growing and most popular programming language used by software engineers, analysts, data scientists, and machine learning engineers alike.",
  rating: nil,
  difficulty: nil,
  expected_time_to_complete: 25,
  platform_id: @codecademy.id
)

@learn_sql = Course.create!(
  title: 'Learn SQL',
  url: 'https://www.codecademy.com/learn/learn-sql',
  description: "Learn to communicate with databases using SQL, the standard data management language.",
  rating: nil,
  difficulty: nil,
  expected_time_to_complete: 7,
  platform_id: @codecademy.id
)


@learn_c_plus_plus = Course.create!(
  title: 'Learn C++',
  url: 'https://www.codecademy.com/learn/learn-c-plus-plus',
  description: "Learn one of the most powerful programming languages in the world and become a rockstar developer.",
  rating: nil,
  difficulty: nil,
  expected_time_to_complete: 20,
  platform_id: @codecademy.id
)

@learn_go = Course.create!(
  title: 'Learn Go',
  url: 'https://www.codecademy.com/learn/learn-go',
  description: "Learn how to use Go (Golang), an open-source programming language supported by Google!",
  rating: nil,
  difficulty: nil,
  expected_time_to_complete: 9,
  platform_id: @codecademy.id
)

@learn_bootstrap = Course.create!(
  title: 'Learn Bootstrap',
  url: 'https://www.codecademy.com/learn/learn-bootstrap',
  description: "Give your website a clear layout and polished style—fast! Learn how to use one of the most popular front-end frameworks, Bootstrap 4!",
  rating: nil,
  difficulty: nil,
  expected_time_to_complete: 3,
  platform_id: @codecademy.id
)

# puts 'Creating the enrollments..'

# # How to create a date - https://stackoverflow.com/questions/12544552/how-can-i-create-a-new-date-instance-in-ruby

# @enrollment_ruby = Enrollment.create!(
#   start_date: Date.new(2020, 6, 8),
#   completed_at: nil,
#   duration: 14,
#   time_of_day: Time.new(2020, 6, 8, 21, 30),
#   completion_status: 30,
#   course_id: @ruby.id,
#   user_id: @user_julien.id
# )


# puts "Finished creating #{Enrollment.count} enrollments!"


# scraping example of Codecademy
# url = "https://www.codecademy.com/catalog/subject/all"
# html_file = open(url).read
# html_doc = Nokogiri::HTML(html_file)

# html_doc.search('.wrapper__3fzpm0z50tenx2fYXBGSMJ').each do |section|
 # section.search('.header__dZgqyr9p7zUaFIBL72Yhb').each do |element|
  #  Course.create!(
   #   title: element.text.strip,
    #  url: "https://www.codecademy.com/learn/#{element.text.strip}",
     # platform_id: @codecademy.id
   # )
   # puts element.text.strip
    # puts element.attribute('href').value
 # end
# end
# puts "Finished creating #{Course.count} courses!"


# scraping example of Udemy

# @udemy = Platform.create!(
#   name: 'Udemy',
#   url: 'https://www.udemy.com'
# )

# url = "https://www.udemy.com/courses/search/?q=ruby"
# html_file = open(url).read
# html_doc = Nokogiri::HTML(html_file)

# html_doc.search("div[class*='udlite-heading-sm udlite-focus-visible-target course-card--course-title--2f7tE']").each do |element|
#   Course.create!(
#     title: element.text.strip,
#     url: "https://www.udemy.com/course/#{element.text.strip}/",
#     platform_id: @udemy.id
#   )
#   puts element.text.strip
# end

# .course-card--main-content--3xEIw > .udlite-heading-sm udlite-focus-visible-target course-card--course-title--2f7tE
# description class, course-card--course-headline--yIrRk


# Scraping example of Coursera

# @coursera = Platform.create!(
#   name: 'Coursera',
#   url: 'https://www.cousera.org'
# )

# url = "https://ja.coursera.org/browse/computer-science/software-development"
# html_file = open(url).read
# html_doc = Nokogiri::HTML(html_file)

# html_doc.search("div[data-reactid]").each do |element|
#   Course.create!(
#     title: element.text.strip,
#     url: "https://ja.coursera.org/learn/#{element.text.strip}",
#     platform_id: @coursera.id
#   )
#   puts element.text.strip
# end

puts "Finished creating #{Course.count} courses!"
