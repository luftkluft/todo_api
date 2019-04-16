class AddDeadlineToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :deadline, :datetime
  end
end
