class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :tip
      t.datetime :start
      t.datetime :end
      t.string :url
      t.string :category
      t.boolean :overdue
      t.string :backgroundColor
      t.integer :order
      t.integer :user_id
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end