class AddFavoriteArtistIdToFavorite < ActiveRecord::Migration[6.0]
  def change
    add_column :favorites, :favorite_artist_id, :integer
  end
end
