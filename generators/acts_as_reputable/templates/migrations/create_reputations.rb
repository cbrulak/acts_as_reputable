class CreateReputations < ActiveRecord::Migration
  def self.up
    create_table :reputations do |t|
      t.integer :creator_id
      t.integer :targer_id
      t.string :creator_type
      t.string :target_type
      
      t.timestamps
    end
  end

  def self.down
    drop_table :reputations
  end
end