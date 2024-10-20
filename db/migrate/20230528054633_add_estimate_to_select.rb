class AddEstimateToSelect < ActiveRecord::Migration[5.2]
  def change
    add_column :estimates, :select, :string
  end
end
