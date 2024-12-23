class CreateOrganizations < ActiveRecord::Migration[8.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.integer :billing_cycle
      t.integer :credit_type

      t.timestamps
    end
  end
end
