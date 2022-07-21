class CreateManualInvestments < ActiveRecord::Migration[7.0]
  def change
    create_table :manual_investments do |t|
      t.date :bought_at
      t.decimal :value
      t.string :investment_name

      t.timestamps
    end
  end
end
