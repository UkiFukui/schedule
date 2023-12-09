class ChangeDataFinishDateToPlans < ActiveRecord::Migration[6.1]
  def change
    change_column :plans, :finish_date, :datetime
  end
end
