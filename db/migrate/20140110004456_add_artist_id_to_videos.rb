class AddArtistIdToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :artist_id, :string
  end
end
