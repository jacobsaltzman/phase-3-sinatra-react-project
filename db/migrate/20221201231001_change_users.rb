class ChangeUsers < ActiveRecord::Migration[6.1]
  def change
    change_table :users do |t|
      t.rename :icon, :email
    end
  end
end
