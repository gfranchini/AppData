class AddAttachmentArchitectureToEnvironments < ActiveRecord::Migration[5.1]
  def self.up
    change_table :environments do |t|
      t.attachment :architecture
    end
  end

  def self.down
    remove_attachment :environments, :architecture
  end
end
