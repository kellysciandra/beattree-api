class AddLinkToArtists < ActiveRecord::Migration[6.0]
  def change
    add_column :artists, :link, :string
  end
end
