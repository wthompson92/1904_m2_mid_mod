require 'rails_helper'

RSpec.describe 'Book Index Page ' do
    describe 'As a user' do
      before :each do
        @camus = Author.create!(name: "Albert Camus")
        @plato = Author.create!(name: "Plato")
        @republic = Book.create!(title: 'The Republic', number_of_pages: 430, publication_year: 200)
        @sisyphus = Book.create!(title: 'Myth of Sisyphus', number_of_pages: 200, publication_year: 1940)
        visit books_path
      end

      it 'I see a list of all books' do
          expect(page).to have_content(@republic.title)
          expect(page).to have_content(@republic.number_of_pages)
          expect(page).to have_content(@republic.publication_year)
          expect(page).to have_content(@sisyphus.title)
          expect(page).to have_content(@sisyphus.publication_year)
          # expect(page).to have_content(@plato.name)
          # expect(page).to have_content(@camus.name)
      end
    end
  end
