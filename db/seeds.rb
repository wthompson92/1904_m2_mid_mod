# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


@republic = Book.create!(title: 'The Republic', number_of_pages: 430, publication_year: 200)
@sisyphus = Book.create!(title: 'Myth of Sisyphus', number_of_pages: 200, publication_year: 1940)
@camus = @sisyphus.authors.create!(name: "Albert Camus")
@plato = @republic.authors.create!(name: "Plato")
