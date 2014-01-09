class CreateVideosTable < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.string :artist
      t.integer :year
    end
  end
end
