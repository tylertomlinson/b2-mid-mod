class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :mechanics, :years_of_expierence, :years_of_experience
  end
end
