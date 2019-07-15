class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :number_of_pages
      t.string :integer
      t.integer :publication_year

      t.timestamps
    end
  end
end
