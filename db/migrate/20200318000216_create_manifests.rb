class CreateManifests < ActiveRecord::Migration[5.2]
  def change
    create_table :manifests do |t|
      t.string :url

      t.timestamps
    end
  end
end
