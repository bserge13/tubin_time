class CreateRoutes < ActiveRecord::Migration[7.1]
  def change
    create_table :routes do |t|
      t.string :title
      t.string :address
      t.string :city
      t.string :state
      t.float :flow_max
      t.float :flow_min

      t.timestamps
    end
  end
end
