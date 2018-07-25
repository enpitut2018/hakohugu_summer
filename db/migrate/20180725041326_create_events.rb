class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :schedule
      t.string :place
      t.text :caption
      t.integer :member_n
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
