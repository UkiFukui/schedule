class Plan < ApplicationRecord
  validates :title, presence: true, length: {maximum: 20}
  validates :start_date, presence: :true
  validates :finish_date, presence: :true
    validate :greater_than_start_date?
  validates :memo, length: {maximum:500}


  private

  def greater_than_start_date?
    if !(start_date) || !(finish_date)
      return false
    end

    if start_date > finish_date
      errors.add(:finish_date, "終了日は開始日以降の日付で選択してください")
    end
  end
end
