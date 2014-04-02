class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.column :name, :string
      t.column :content, :text
      t.column :video, :string

      t.timestamp
    end

    create_table :sections do |t|
      t.column :name, :string
      t.column :lesson_id, :integer
    end
  end
end
