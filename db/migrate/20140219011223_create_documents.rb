class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name
      t.string :slug

      t.timestamps
    end
add_index :documents, :slug, unique: true
  end
end
