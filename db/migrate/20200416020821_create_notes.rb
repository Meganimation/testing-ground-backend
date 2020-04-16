class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.string :name
      t.string :desc
      t.string :code
      t.string :genre

      t.timestamps
    end
  end
end
