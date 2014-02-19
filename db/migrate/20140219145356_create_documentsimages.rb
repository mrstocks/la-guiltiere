class CreateDocumentsimages < ActiveRecord::Migration
  def change
    create_table :documentsimages do |t|
      t.string :filename
      t.string :title
      t.timestamps
    end
  end
end
