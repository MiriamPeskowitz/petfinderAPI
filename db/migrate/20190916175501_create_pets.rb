class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :title
      t.string :content
      t.string :image
      t.string :contact

      t.timestamps
    end
  end
end
