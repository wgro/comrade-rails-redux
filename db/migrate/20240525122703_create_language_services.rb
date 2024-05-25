class CreateLanguageServices < ActiveRecord::Migration[7.1]
  def change
    create_table :language_services do |t|
      t.string :name

      t.timestamps
    end
  end
end
