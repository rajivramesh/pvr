class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
      t.string :name
      t.time :start_at
      t.time :end_at
      t.references :channel, index: true

      t.timestamps
    end
  end
end
