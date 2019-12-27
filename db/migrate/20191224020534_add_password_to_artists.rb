class AddPasswordToArtists < ActiveRecord::Migration[6.0]
  def change
      add_column :artists, :password, :string
  end
end
