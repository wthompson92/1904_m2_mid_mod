require 'rails_helper'

RSpec.describe 'Author Page ' do
    describe 'As a user' do
      before :each do
        @camus = Author.create!(name: "Albert Camus")

        @stranger = @camus.books.create!(title: 'The Stranger', number_of_pages: 430, publication_year: 1945)
        @sisyphus = @camus.books.create!(title: 'Myth of Sisyphus', number_of_pages: 200, publication_year: 1940)
        visit author_path(@camus)
      end

      it 'I see Content' do
          expect(page).to have_content(@camus.name)
          expect(page).to have_content(@stranger.title)
          expect(page).to have_content(@sisyphus.title)
          expect(page).to have_content(315)
        
      end
    end
  end
