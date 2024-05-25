class CreateHomepages < ActiveRecord::Migration[7.1]
  def change
    create_table :homepages do |t|
      t.string :url, null: false
      t.string :title
      t.string :html_lang
      t.references :language_service, null: false, foreign_key: true
      t.timestamps
    end
  end
end
