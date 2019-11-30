class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :contributor
      t.text :text
      t.references :topic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
