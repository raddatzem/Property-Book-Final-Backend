# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Starting Seeding..."

Manager.destroy_all
Property.destroy_all
User.destroy_all
puts "Removing Data..."


#Users
kevin = User.create( username: "ChemHokie", password: "123" )
emily = User.create( username: "EmRad", password: "456" )


#Managers
thomas = Manager.create(
        name: "Thomas", 
        
        bio: "I will take care of everything!",
        image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIi2d_t8XLFXz6WIW1awkpKtojl1sOaWNv1w&usqp=CAU"
        )
  
megan = Manager.create(
        name: "Megan",
       
        bio: "Making your rental investment easy!",
        image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMQ-JEOiuiDnGsPmiTuJEQeEeF99s20WT_2Q&usqp=CAU"
        )
  
rick = Manager.create(
        name: "Rick", 
        
        bio: "Voted #1 Property Manager for the past 5 years in Property Manager Weekly Magazine!",
        image: "data:image/jpeg;base64,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"
        )

#Properties
property1 = Property.create(
    name: "Blue House",
    user: kevin,
    manager: rick,
    address: "221 Baker St.",
    notes: "Small yard, community pool, inside has been updated.",
    image: "https://www.rocketmortgage.com/resources-cmsassets/RocketMortgage.com/Article_Images/Large_Images/TypesOfHomes/types-of-homes-hero.jpg"
    )   
property2 = Property.create(
    name: "Gray House",
    user: kevin,
    manager: rick,
    address: "17 Cherry Tree Lane",
    notes: "Corner lot, beautiful yard, neighbors are loud.",
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBrgX4UGxFduTOHCR_9WXE5pN-Iucq0yK02DfQDcRgWmsnYHEtGP2CbuMHuMy0z3nVBmU&usqp=CAU"
    )      
property3 = Property.create(
    name: "Normal and Bland House",
    user: kevin,
    manager: megan,
    address: "4 Privot Dr.",
    notes: "Small backyard, not alot of storage space, no post on Sundays.",
    image: "https://i.insider.com/57dff03aa1e3051b008b49df?width=700"
    )
property4 = Property.create(
    name: "White House",
    user: emily,
    manager: thomas,
    address: "186 Fleet St.",
    notes: "Newly renovated outside and inside, central heating and AC, area is on the upswing.",
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgrTDM2IJiGGdfkU6oyfh4OW2a4Wcw-1bK8Q&usqp=CAU"
    )



puts "Done Seeding!"