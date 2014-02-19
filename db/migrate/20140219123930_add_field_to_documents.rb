class AddFieldToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :intro, :text
    add_column :documents, :main, :text
  end
end
