class AddAvatarToSlider < ActiveRecord::Migration
  def change
    add_column :sliders, :filename, :string
  end
end
