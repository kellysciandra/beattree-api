class AddPasswordToArtists < ActiveRecord::Migration[6.0]
  def change
      add_column :password, :string
    end
  end
end
