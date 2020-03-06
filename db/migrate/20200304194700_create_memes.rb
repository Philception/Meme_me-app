class CreateMemes < ActiveRecord::Migration[6.0]
  def change
    create_table :memes do |t|
      t.string :image
      t.string :caption

      t.timestamps
    end
  end
end
