class AddArtUrlToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :art_url, :string
  end
end
