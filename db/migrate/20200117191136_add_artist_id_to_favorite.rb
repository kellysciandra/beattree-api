class AddArtistIdToFavorite < ActiveRecord::Migration[6.0]
  def change
    add_column :favorites, :artist_id, :integer
  end
end
