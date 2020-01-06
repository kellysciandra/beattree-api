class RemovePasswordFromArtists < ActiveRecord::Migration[6.0]
  def change

    remove_column :artists, :password, :string
  end
end
