class AddResumeToUser < ActiveRecord::Migration[5.0]
  def self.up
    change_table :users do |t|
      t.attachment :resume
      t.string :bio
    end
  end

  def self.down
    remove_attachment :users, :resume
  end
end
