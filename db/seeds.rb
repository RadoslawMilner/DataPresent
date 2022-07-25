# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

ISO3166::Country.all.shuffle.first(30).each do |country|
  Country.create({name: country })
end

100.times { Sporter.create({
    name: Faker::Name.name,
    age: rand(18..40),
    country_id: rand(1..30)
  }) }

%w[tennis parachuting badminton archery chess boxing racing golf running skiing walking cycling surfing swimming].each do |c|
  Competition.create( {title: c} )
end

Competition.all.each do |c|
  @sporters = Sporter.all.shuffle.first(10)
  (1..10).each do |spot|
    CompetitionResult.create({ 
      sporter_id: @sporters.pop,
      competition_id: c,
      place: spot,
      created_at: rand(1.years.ago..Time.now)
    })
  end
end
