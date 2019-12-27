class AddAttachmentFileToDocuments < ActiveRecord::Migration[6.0]
  def self.up
    change_table :documents do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :documents, :file
  end
end
