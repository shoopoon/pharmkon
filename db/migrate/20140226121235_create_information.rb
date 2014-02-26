class CreateInformation < ActiveRecord::Migration
  def change
    create_table :information do |t|
      t.string :body, :null => false, :default => ""
      t.datetime :posted_at, :null => false
      t.boolean :enable, :default => true

      t.timestamps
    end
  end
end
