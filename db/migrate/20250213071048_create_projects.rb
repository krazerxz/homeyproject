class CreateProjects < ActiveRecord::Migration[8.0]
  def change
    create_table :projects do |t|
      t.integer :status

      t.timestamps
    end
  end
end
