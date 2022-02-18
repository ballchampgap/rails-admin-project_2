# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create email: 'jirutsangchayza@gmail.com', password: 'password', name: 'ball'
Admin.create name: 'ball'
admin = Admin.first
admin.add_role(:super_admin)
# Epidemic.create(yname: "ball", plant_type: "rice", data_epidemic: "covid", lat: "18.7887002825974", lon: "98.96780650658836", description: "nocaption")


# 15.times do |x|
#     Epidemic.create(yname: "top", plant_type: "cake", data_epidemic: "covid1", lat: "18.79351469159914", lon: "98.97799890080805", description: "nocaption9")
# end

# 15.times do |z|
#     Epidemic.create(yname: "bom", plant_type: "dao", data_epidemic: "covid09", lat: "18.79351469159914", lon: "98.97799890080805", description: "nocaption8")
# end

# Pest.create(yname: "ball", plant_type: "rice", data_pest: "covid", lat: "18.7887002825974", lon: "98.96780650658836", description: "nocaption")
# Pest.create(yname: "champ", plant_type: "cron", data_pest: "covid8", lat: "18.79351469159914", lon: "98.97799890080805", description: "nocaption9")
# Pest.create(yname: "bom", plant_type: "no", data_pest: "covidasf", lat: "18.7887002825974", lon: "98.96780650658836")