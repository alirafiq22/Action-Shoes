class CreateCategoryMasters < ActiveRecord::Migration
  def change
    create_table :category_masters do |t|
      t.string :Actioncode
      t.string :Colorname
      t.string :Category
      t.string :Sub_Cat
      t.string :AK_Status
      t.string :AK_Sub_Status
      t.string :Key
      t.string :ImageURL

      t.timestamps
    end
  end
end
