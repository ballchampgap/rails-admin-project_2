# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Admin.create email: 'admin@admin.com', password: 'password'
# admin = Admin.last
# admin.add_role(:super_admin)

# Epidemic.create(yname: "ball", plant_type: "rice", data_epidemic: "covid", lat: "18.7887002825974", lon: "98.96780650658836", description: "nocaption")


15.times do |x|
    Pest.create(yname: "top", plant_type: "cake", data_pest: "covid1", lat: "18.79351469159914", lon: "98.97799890080805", description: "nocaption9")
end

15.times do |z|
    Pest.create(yname: "bom", plant_type: "dao", data_pest: "covid09", lat: "18.79351469159914", lon: "98.97799890080805", description: "nocaption8")
end

Pest.create(yname: "rewg", plant_type: "rice", data_pest: "covid", lat: "18.7887002825974", lon: "98.96780650658836", description: "rwsgtrwegergrewhgerHUET5UHJET5UHTREHJRTHTRHERT")
# Epidemic.create(yname: "wegfew", plant_type: "cron", data_epidemic: "covid8", lat: "18.79351469159914", lon: "98.97799890080805", description: "erhgeryherjhrtujtyiyuoikuyioliuljklhjltuolyuiok")

# Complain.create(yname: "pppp", section: "covidasf", body: "asnhgyhfgiehfihefrwegrewgrewgerwsgerdgerdgreg", user_id: "U1fa936d386fc92aa91c37aa751765d38")
