class AddPasswordToArtists < ActiveRecord::Migration[6.0]
  def change
    change_table :artists do |t|
      t.string :password
    end
  end
end
