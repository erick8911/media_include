class MediaIncludeCreateMedia < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.attachment :picture
      t.references :object, :polymorphic => true

      t.timestamps
    end
  
    create_table :videos do |t|
      t.attachment :video
      t.references :object, :polymorphic => true
      t.timestamps
    end
  end
end