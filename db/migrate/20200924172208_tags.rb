class Tags < ActiveRecord::Migration[6.0]
  def change
    create_table :tags do |t|
      t.string :tags 

    end
  end
end
