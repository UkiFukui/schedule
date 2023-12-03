class CreatePlans < ActiveRecord::Migration[6.1]
  def change
    create_table :plans do |t|
      t.string :title, null: false
      t.date :start_date, null: false
      t.date :finish_date, null: false
      t.boolean :all_day, default: false
      t.string :memo

      t.timestamps
    end
  end
end
