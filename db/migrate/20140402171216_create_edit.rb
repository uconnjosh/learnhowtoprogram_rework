class CreateEdit < ActiveRecord::Migration
  def change
   add_column :lessons, :section_id, :integer
   remove_column :sections, :lesson_id, :integer
  end
end
