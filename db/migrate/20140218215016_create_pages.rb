class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.string :slug
      t.text :intro
      t.text :main
      t.timestamps
    end
  end
end
