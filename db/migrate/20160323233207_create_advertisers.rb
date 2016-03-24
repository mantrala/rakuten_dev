class CreateAdvertisers < ActiveRecord::Migration
  def change
    create_table :advertisers do |t|
      t.string :name, index: true

      t.timestamps null: false
    end
  end
end
