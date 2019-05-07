class CreateAnalysts < ActiveRecord::Migration[5.1]
  def change
    create_table :analysts do |t|

      t.string :name
      t.text :bio
      t.text :content


    end
  end
end
