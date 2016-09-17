class AddAttachmentImageToNonProfits < ActiveRecord::Migration
  def self.up
    change_table :non_profits do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :non_profits, :image
  end
end
