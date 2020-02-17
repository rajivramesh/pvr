class CreateFavourites < ActiveRecord::Migration[5.2]
  def change
    create_table :favourites do |t|
    	t.references :user, index: true
    	t.references :show, index: true

      t.timestamps
    end
  end
end
