class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.column :lat, :decimal, :precision => 15, :scale => 10
      t.column :lng, :decimal, :precision => 15, :scale => 10
      t.datetime :start_time
      t.datetime :end_time
      t.float :cost
      t.string :url

      t.timestamps null: false
    end
  end
end
