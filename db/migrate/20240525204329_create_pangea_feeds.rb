class CreatePangeaFeeds < ActiveRecord::Migration[7.1]
  def change
    create_table :pangea_feeds do |t|
      t.string :url
      t.string :type
      t.references :language, null: false, foreign_key: true
      t.references :language_service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
