class MediaIncludeCreateMedia < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.attachment :picture
      t.string :description
      t.references :object, :polymorphic => true

      t.timestamps
    end
  
    create_table :videos do |t|
      t.attachment :video
      t.string :url
      t.string :description
      t.references :object, :polymorphic => true
      t.timestamps
    end
  end
end