class CreateUserAlerts < ActiveRecord::Migration[5.0]
  def change
    create_table :user_alerts do |t|
      t.string :alert_name
      t.integer :user_id
      t.integer :target_price
      t.integer :status
    end
  end
end
