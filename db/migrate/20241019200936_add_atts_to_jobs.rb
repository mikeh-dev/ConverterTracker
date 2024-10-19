class AddAttsToJobs < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :title, :string
    add_column :jobs, :description, :text
    add_column :jobs, :location, :string
    add_column :jobs, :customer_name, :string
    add_column :jobs, :start_date, :datetime
    add_column :jobs, :end_date, :datetime
  end
end
