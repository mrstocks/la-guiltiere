class Pages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string 	:title
      t.text    :intro
      t.text	:main
      t.timestamps
    end
  end
end
