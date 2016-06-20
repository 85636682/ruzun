# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = User.create([
  {
    mobile: '111111111111',
    name: 'test-user-00',
    password: '111111'
  },
  {
    mobile: '222222222222',
    name: 'test-user-01',
    password: '111111'
  }
])
