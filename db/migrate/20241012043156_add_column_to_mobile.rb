class AddColumnToMobile < ActiveRecord::Migration[5.2]
  def change
    add_column :estimates, :mobile, :string
  end
end
