class ChangeAdmissionPriceToFloat < ActiveRecord::Migration[5.1]
  def change
    change_column :amusement_parks, :admission_price, :float
  end
end
