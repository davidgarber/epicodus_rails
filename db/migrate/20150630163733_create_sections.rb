class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.column :title, :string

      t.timestamps
    end
  end
end
