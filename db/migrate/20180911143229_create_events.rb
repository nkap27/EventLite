class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :image_url
      t.string :date
      t.string :description
    end
  end
end
