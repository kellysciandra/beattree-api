class AddAttachmentMp3ToBeats < ActiveRecord::Migration[6.0]
  def self.up
    change_table :beats do |t|
      t.attachment :mp3
    end
  end

  def self.down
    remove_attachment :beats, :mp3
  end
end
