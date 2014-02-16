class AddSliders < ActiveRecord::Migration
  def change
    create_table :sliders do |t|
      t.string :name
      t.string :filename
 
      t.timestamps
    end
  end
end
