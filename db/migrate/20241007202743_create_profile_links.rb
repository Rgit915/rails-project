class CreateProfileLinks < ActiveRecord::Migration[7.2]
  def change
    create_table :profile_links do |t|
      t.string :platform
      t.string :url
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
