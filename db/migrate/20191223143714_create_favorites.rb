class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.references :beat, foreign_key: true
      t.references :producer, foreign_key: true 
      t.timestamps
    end
  end
end
