# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
article=Article.create([{article:'Third time am testing it'}])
users= User.create([{first_name:'micheal'},{last_name:'mbanda'},{email:'mbandashyaka@gmail.com'},
                    {password:'beatrice'},{position: 4},{visible: true}])
Article.create(user_id:users.first,article:article.first,position: 2)

