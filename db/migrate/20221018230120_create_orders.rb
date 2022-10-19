class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :detail
      t.date :date

      t.timestamps
    end
  end
end
