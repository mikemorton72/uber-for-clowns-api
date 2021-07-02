class AddSpecialtyToClown < ActiveRecord::Migration[6.1]
  def change
    add_column :clowns, :specialty, :string
  end
end
