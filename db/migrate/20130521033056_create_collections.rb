class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.string :title
      t.date :date

      t.timestamps
    end
  end
end
