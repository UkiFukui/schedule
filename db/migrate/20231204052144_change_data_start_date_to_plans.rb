class ChangeDataStartDateToPlans < ActiveRecord::Migration[6.1]
  def change
    change_column :plans, :start_date, :datetime
  end
end
