# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#----------------------Users--------------------#

john_smith = User.create(
    name: "John Smith",
    username: "JohnSmith",
    location: "Denver, CO"
)

mary_parker = User.create(
    name: "Mary Parker",
    username: "MaryParker",
    location: "Miami, FL"
)

julian_gonzalez = User.create(
    name: "Julian Gonzalez",
    username: "JulianGonzalez"
    location: "San Francisco, CA"
)

rachel_frink = User.create(
    name: "Rachel Frink",
    username: "RachelFrink",
    location: "Minneapolis, MN"
)

joshua_clemens = User.create(
    name: "Joshua Clemens",
    username: "JoshuaClemens",
    location: "Seattle, WA"
)