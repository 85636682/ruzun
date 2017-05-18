# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#   admin = Admin.create(phone: '15768092082', name: '黎锦洪', password: '861117')

(1..96).each do |i|
    Locker.create(serial_number: "0#{i}", state: :unused)
end