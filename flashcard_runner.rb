require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'

@card_1 = Card.new("What is 5 + 5", "10", :STEM)
@card_2 = Card.new("What Is Rachel's favorite animal", "panda", :Turing_staff)
@card_3 = Card.new("What is Mike's middle name?", "noboby knows", :Turing_staff)
@card_4 = Card.new("What cardboard cutout lives at Turing?", "Justin Beiber", :Pop_culture)
# @card_5 = Card.new("What is the process of identifying and defining a problem, then solving it by using data in an organized, step-by-step manner?", "Analytical thinking", :Data_analytics)
# @card_6 = Card.new("The question or problem data analysis resolves for a business", "Business task", :Data_analytics)
# @card_7 = Card.new("The condition in which something exists or happens", "Context", :Data_analytics)
# @card_8 = Card.new("A collection of facts", "Data", :Data_analytics)
# @card_9 = Card.new("The collection, transformation, and organization of data in order to draw conclusions, make predictions, and drive informed decision-making", "Data Analysis", :Data_analytics)
# @card_10 = Card.new("Someone who collects, transforms, and organizes data in order to draw conclusions, make predictions, and drive informed decision-making", "Data analyst", :Data_analytics)
# @card_11 = Card.new("The science of data", "Data analytics", :Data_analytics)
# @card_12 = Card.new("How information is organized", "Data Design", :Data_analytics)
# @card_13 = Card.new("Using facts to guide business strategy", "Data-driven decision-making", :Data_analytics)
# @card_14 = Card.new("The various elements that interact with one another in order to produce, manage, store, organize, analyze, and share data", "Data ecosystem", :Data_analytics)
# @card_15 = Card.new("A field of study that uses raw data to create new ways of modeling and understanding the unknown", "Data science", :Data_analytics)
# @card_16 = Card.new("The management of the people, processes, and tools used in data analysis", "Data strategy", :Data_analytics)
# @card_17= Card.new("The graphical representation of data", "Data visualization", :Data_analytics)
# @card_18 = Card.new("The graphical representation of data", "Data visualization", :Data_analytics)
# @card_19 = Card.new("A collection of data stored in a computer system", "Database", :Data_analytics)
# @card_20 = Card.new("A quality of data analysis that does not create or reinforce bias", "Fairness", :Data_analytics)
# @card_21 = Card.new("A set of instructions used to perform a calculation using the data in a spreadsheet", "Formula", :Data_analytics)
# @card_22 = Card.new("A preset command that automatically performs a specified process or task using the data in a spreadsheet", "Function", :Data_analytics)
# @card_23 = Card.new("A method for examining and evaluating the current state of a process in order to identify opportunities for improvement in the future", "Gap analysis", :Data_analytics)
# @card_24 = Card.new("The attributes that describe a piece of data contained in a row of a table", "Observation", :Data_analytics)
# @card_25 = Card.new("A request for data or information from a database", "Query", :Data_analytics)
# @card_26 = Card.new("A computer programming language used to communicate with a database", "Query language", :Data_analytics)
# @card_27 = Card.new("The reason why a problem occurs", "Root cause", :Data_analytics)
# @card_28 = Card.new("People who invest time and resources into a project and are interested in its outcome", "Stakeholders", :Data_analytics)
# @card_29 = Card.new("The ability to break things down into smaller steps or pieces and work with them in an orderly and logical way", "Technical mindset", :Data_analytics)

@cards = [@card_1, @card_2, @card_3, @card_4] #card_5, card_6, card_7, card_8, card_9, card_10, card_11, card_12, card_13, card_14, card_15, card_16, card_17, card_18, card_19, card_20, card_21, card_22, card_23, card_24, card_25, card_26, card_27, card_28, card_29]
@deck_1 = Deck.new(@cards)
@round_1 = Round.new(@deck_1)


@round_1.start
# guess = gets.chomp
# turn_1 = Turn.new(guess, @card_1)
# @round_1.take_turn(guess)
