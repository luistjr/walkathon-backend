# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

10.times do
    user = User.create!(name: Faker::Name.unique.name )
    
    
    dog = Dog.create!(
        name: Faker::Creature::Dog.name,
        breed: Faker::Creature::Dog.breed,
        comment: Faker::Quotes::Shakespeare.as_you_like_it_quote,
        img_url: Faker::LoremFlickr.image(size: "50x50", search_terms: ['dogs']),
        user: user
        
    )
    
    

        appointment = Appointment.create!(
            dog: dog,
            date: Faker::Date.between_except(from: 1.year.ago, to: 1.year.from_now, excepted: Date.today),
            time: Faker::Time.between_dates(from: Date.today - 1, to: Date.today, period: :morning)
        )
    
end
