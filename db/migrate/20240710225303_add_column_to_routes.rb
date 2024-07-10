class AddColumnToRoutes < ActiveRecord::Migration[7.1]
  def change
    add_column :routes, :site_code, :string
  end
end
