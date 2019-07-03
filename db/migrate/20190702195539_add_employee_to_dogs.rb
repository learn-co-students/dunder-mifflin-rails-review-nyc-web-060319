class AddEmployeeToDogs < ActiveRecord::Migration[5.2]
  def change
    add_reference :dogs, :employee, foreign_key: true
  end
end
