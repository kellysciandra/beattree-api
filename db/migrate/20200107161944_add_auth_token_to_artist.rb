class AddAuthTokenToArtist < ActiveRecord::Migration[6.0]
  def change
    add_column :artists, :auth_token, :string
    add_index :artists, :auth_token, unique: true
  end
end
