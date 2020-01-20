class AddLinkToFavorite < ActiveRecord::Migration[6.0]
  def change
    add_column :favorites, :link, :string
  end
end
