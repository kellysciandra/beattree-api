class AddArtistIdToBeats < ActiveRecord::Migration[6.0]
  def change
    add_column :beats, :artist_id, :integer
  end
end
