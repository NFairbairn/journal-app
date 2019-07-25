class CreateJournals < ActiveRecord::Migration[5.2]
  def change
    create_table :journals do |t|
      t.string :subject
      t.integer :user_id

      t.timestamps
    end
  end
end
