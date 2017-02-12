class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :date
      t.string :start
      t.string :end
      t.string :url
      t.string :category
      t.boolean :allDay
      t.boolean :completed
      t.integer :order
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
