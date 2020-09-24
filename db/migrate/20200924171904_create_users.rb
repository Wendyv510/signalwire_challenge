class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :title
      t.array :tags 

      t.timestamps
    end
  end
end
