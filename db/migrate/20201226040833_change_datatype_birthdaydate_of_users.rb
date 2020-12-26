class ChangeDatatypeBirthdaydateOfUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :birthday_date, :date
  end
end
