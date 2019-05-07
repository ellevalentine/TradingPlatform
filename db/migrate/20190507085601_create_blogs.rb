class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|

      t.string :user_id
      t.string :analyst_id

      


      t.timestamps
    end
  end
end
