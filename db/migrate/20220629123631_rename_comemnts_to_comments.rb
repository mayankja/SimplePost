class RenameComemntsToComments < ActiveRecord::Migration[7.0]
  def change
    def self.up
      rename_table :comemnts, :comments
    end

    def self.down
      rename_table :comments, :comemnts
    end
  end
end
