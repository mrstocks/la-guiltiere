class AddDocidtodocimages < ActiveRecord::Migration
  def change
   add_column :documentsimages, :document_id, :integer
  end
end
