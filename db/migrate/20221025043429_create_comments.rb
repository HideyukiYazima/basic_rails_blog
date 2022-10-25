class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :body
      t.references :articles, foreign_key: true

      t.timestamps
    end
  end
end
